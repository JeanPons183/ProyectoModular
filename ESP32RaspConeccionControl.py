import RPi.GPIO as GPIO
from time import sleep,time
import matplotlib.pyplot as plt
import socket
import json
import serial

# Pin del motor:
	#Rojo motor+
	#Negro motor-
	#Verde gnd
	#Azul vcc encoder 3.3V
	#Amarillo salida A, encoder adelante activa primero este
	# Blanco salida b, encoder reversa activa primero este

# Funciones 
# ----------------------------------------------------------------------
def CrearServidor():
		server_host = '192.168.137.152'  # Escucha en todas las interfaces de red
		server_port = 1234  # Puerto de escucha (puedes usar cualquier número de puerto)
		print(f"Esperando conexiones en {server_host}:{server_port}")
		
		# Crea el socket del servidor
		server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
		server_socket.bind((server_host, server_port))
		server_socket.listen(1)  # Acepta una sola conexión entrante

		# Acepta una conexión entrante
		client_socket, client_address = server_socket.accept()
		print(f"Conectado a {client_address}")
		return client_socket

def RecibirDatosCliente(client_socket):
	# Datos recibidos
	data = client_socket.recv(1024).decode()
	
	#Si se desconecta el cliente
	if not data:
		print("El cliente se ha desconectado")
		return 0
		
	# Cargar los datos recibidos en estructura Python de Json
	datos = json.loads(data)

	# Procesar los datos según el tipo de comando
	comando = datos["comando"]
	parametros = datos.get("parametros", {})

	#Parte de Control
	if comando == "PropiedadesControl":
		# Posición deseada encoder
		pd = parametros["pd"]
		#Ganancias
		kp = parametros["kp"]
		kd = parametros["kd"]
		# Tiempo Simulación
		tSimulacion = parametros["t"]
		# Opcion de reinicio
		rein = parametros["rein"]

	return pd, kp, kd, tSimulacion, rein

def EnviarGraficas(tiempo,pos1,pos2,pdPlot,control,control1,control2,errorPlot1,errorPlot2,client_socket):
	# Datos que deseas enviar al cliente (en formato de diccionario)
		datos_a_enviar = {
			"comando": "Graficas",
			"parametros": {
				"tiempo": tiempo,
				"pos1": pos1,
				"pos2": pos2,
				"pdPlot": pdPlot,
				"control": control,
				"control1": control1,
				"control2": control2,
				"errorPlot1": errorPlot1,
				"errorPlot2": errorPlot2
			}
		}

		# Convertir los datos a JSON
		data_json = json.dumps(datos_a_enviar)
		data_length = len(data_json)
		print(data_length)

		# Enviar la longitud de los datos
		client_socket.send(str(data_length).encode())

		# Recibir confirmación del cliente (opcional)
		client_socket.recv(1024)

		# Enviar los datos en fragmentos
		chunk_size = 1024  # Tamaño del fragmento
		sent = 0

		while sent < data_length:
			chunk = data_json[sent:sent + chunk_size]
			client_socket.send(chunk.encode())
			sent += len(chunk)

		print("Datos enviados.")

def actualizar_posicion(channel):
	global posicion
	if GPIO.input(ENCODER_A) == GPIO.HIGH:	#Cuando detecta el flanco A 
		if GPIO.input(ENCODER_B) == GPIO.LOW:	#Si el flanco B esta abajo, se movió hacia adelante
			posicion -= 1
		else:					#Sino pos se movió para atras
			posicion += 1
	print(f'Posicion encoder 1: {posicion}')

def actualizar_posicion2(channel):
	global posicion2
	if GPIO.input(ENCODER_A2) == GPIO.HIGH:	#Cuando detecta el flanco A 
		if GPIO.input(ENCODER_B2) == GPIO.LOW:	#Si el flanco B esta abajo, se movió hacia adelante
			posicion2 += 1
		else:					#Sino pos se movió para atras
			posicion2 -= 1
	print(f'Posicion encoder 2: {posicion2}')

def setMotor(u1,u2,direccion1,direccion2):
	# Envia los datos a la ESP32 para controlar los motores 
	data = {
            "u1": u1, "u2": u2, "direccion1": direccion1, "direccion2": direccion2
        }
	# Convierte el diccionario en una cadena JSON
	json_data = json.dumps(data)
	try:
		# Envía la cadena JSON a la ESP32 a través del puerto serial
		ser.write((json_data + "\n").encode())
		#print(f"Dato JSON enviado: {json_data}")
	except Exception as e:
		print(f"Error al enviar datos: {e}")

def DireccionSaturacion(u):
	# Cambio de dirección dependiendo la ley de control
	if(u<0):
		direccion=-1
	else:
		direccion=1

	#Saturacion
	if(abs(u)>50):
		u=50
	else:
		u=abs(u)
	return u, direccion
# -----------------------------------------------------------------------

try:
	# Variables globales
	posicion = 0
	posicion2 = 0

	# Configuración Rasp
	# -----------------------------------------------------------------------------------
	# Definición de pines BOARD
	ENCODER_A = 13
	ENCODER_B = 11		
	ENCODER_A2 = 16
	ENCODER_B2 = 15
	# Configuración de Raspberry Pi GPIO
	GPIO.setmode(GPIO.BOARD)
	GPIO.setup(ENCODER_A, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)	# Configurado como PullDown
	GPIO.setup(ENCODER_B, GPIO.IN)
	GPIO.setup(ENCODER_A2, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)	# Configurado como PullDown
	GPIO.setup(ENCODER_B2, GPIO.IN)

	# Configuracion que detecta flancos, bouncetiem dice que tan rapido lee el encoder
	GPIO.add_event_detect(ENCODER_A, GPIO.RISING, callback=actualizar_posicion,bouncetime= 120)
	GPIO.add_event_detect(ENCODER_A2, GPIO.RISING, callback=actualizar_posicion2,bouncetime= 120)

	# -----------------------------------------------------------------------------------------
	# Configura el servidor
	# ----------------------------------------------------------------------
	client_socket = CrearServidor()
	# ----------------------------------------------------------------------

	# Configuracion puerto serial para la ESP32
	# ----------------------------------------------------------------------
	ser = serial.Serial('/dev/ttyUSB0', 9600)  # Reemplazar el puerto COM correcto
	# ----------------------------------------------------------------------

	while True:
		# Datos recibidos
		pd, kp, kd, tSimulacion, rein = RecibirDatosCliente(client_socket)
		
		#Inicializar listas, (tiempo,posicion,AccionControl,posicionDeseada y error)
		tiempo=[]
		pos1 = []
		pos2 = []
		control = []
		control1 = []
		control2 = []
		pdPlot=[]
		errorPlot1 = []
		errorPlot2 = []

		# Reinicio Variables globales
		if(rein):
			posicion = 0
			posicion2 = 0

		# Inicializar parametros control	
		errorAnt1 = 0
		errorAnt2 = 0
		tiempoAnterior = 0
		t = 0
		i=1 	# Para agregar el primer elemento, que la diferencia de tiempo es mucha
		direccion = 0
		direccion1 = direccion
		direccion2 = direccion

		setMotor(0,0,direccion1,direccion2)

		# ~ while abs(error)>0.001:			#Esto es para parar el ciclo por error
		
		while t<tSimulacion:				#Esto es para parar el ciclo por tiempo
			#Calculo del tiempo
			tiempoActual=time()
			deltaTiempo = tiempoActual-tiempoAnterior	#Diferencia de tiempo
			tiempoAnterior = tiempoActual			# El tiempo anterior se convierte en el actual
			
			#Calculo parte derivativa
			error1 = pd-posicion				# Calculo del error
			dError1 = (error1-errorAnt1)/deltaTiempo		# Derivada del tiempo
			errorAnt1 = error1

			error2 = pd-posicion2				# Calculo del error
			dError2 = (error2-errorAnt2)/deltaTiempo		# Derivada del tiempo
			errorAnt2 = error2				

			# Ley de control
			u1 = kp*error1+kd*dError1
			u2 = kp*error2+kd*dError2
#			sleep(1)

			# Parte de direccion y saturacion del control
			u1, direccion1 = DireccionSaturacion(u1)
			u2, direccion2 = DireccionSaturacion(u2)

			setMotor(u1,u2,direccion1,direccion2)
			
			if i==1:
				i+=1
				t += 0
			else:
				t += deltaTiempo

			tiempo.append(t)		#Añade el tiempo

			# Imprimir la posición actual del encoder
			print("\nPosición encoder 1:", posicion, "\nPosicion encoder 2:", posicion2)
			pos1.append(posicion)		# Añadir a la lista la posicion actual
			pos2.append(posicion2)
			pdPlot.append(pd)		# Añade a la lista la posición deseada

			# Imprimir error
			print("\nError1: ",error1, "\nError2: ",error2)
			errorPlot1.append(error1)		# Añade el error
			errorPlot2.append(error2)

			#Imprimir control
			print("\nControl 1: ", u1, "\nControl 2: ", u2)
			control1.append(u1)
			control2.append(u2)

			print("\nTiempo = ",t)
			print("\n------------------------------------------------------------")

			sleep(0.1)	# Para evitar problemas de lectura de datos
		
		setMotor(0,0,direccion1,direccion2)
		
		EnviarGraficas(tiempo,pos1,pos2,pdPlot,control,control1,control2,errorPlot1,errorPlot2,client_socket)

		sleep(.2)

except Exception as e:
    print(f"Error en el servidor: {e}")
    setMotor(0, 0, direccion1, direccion2)
    pass

finally:
    # Detener conexiones y limpiar GPIO
    print("Cerrando conexiones...")
    sleep(2)
    ser.close()
    GPIO.cleanup()
