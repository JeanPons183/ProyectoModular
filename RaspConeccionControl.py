import RPi.GPIO as GPIO
from time import sleep,time
import matplotlib.pyplot as plt
import socket
import json
# Pin del motor:
	#Rojo motor+
	#Negro motor-
	#Verde gnd
	#Azul vcc encoder 3.3V
	#Amarillo salida A, encoder adelante activa primero este
	# Blanco salida b, encoder reversa activa primero este

# Funciones 
# ----------------------------------------------------------------------
def actualizar_posicion(channel):
	global posicion
	if GPIO.input(ENCODER_A) == GPIO.HIGH:	#Cuando detecta el flanco A 
		if GPIO.input(ENCODER_B) == GPIO.LOW:	#Si el flanco B esta abajo, se movió hacia adelante
			posicion += 1
		else:					#Sino pos se movió para atras
			posicion -= 1
	print(f'Posicion encoder 1: {posicion}')

def actualizar_posicion2(channel):
	global posicion2
	if GPIO.input(ENCODER_A2) == GPIO.HIGH:	#Cuando detecta el flanco A 
		if GPIO.input(ENCODER_B2) == GPIO.LOW:	#Si el flanco B esta abajo, se movió hacia adelante
			posicion2 += 1
		else:					#Sino pos se movió para atras
			posicion2 -= 1
	print(f'Posicion encoder 2: {posicion2}')

def setMotor(direccion,u):
	lpwm.ChangeDutyCycle(abs(u))  # ajusta según el control
	rpwm.ChangeDutyCycle(0)  # Si se mueve para atras, entonces el rpwm es 0

def muestraGraficas(tiempo,pos,pdPlot,control,errorPlot):
	#Zona de Graficas
	plt.figure(1)
	plt.plot(tiempo,pos,label='Posición Actual', color='blue',linestyle = '-')
	plt.plot(tiempo,pdPlot,label='Posición Deseada', color='red',linestyle='--')
	# ~ plt.ylim(-100,100)
	# ~ plt.axis([xmin,xmax,ymin,ymax])
	plt.title("Grafica Posición")
	plt.xlabel("Tiempo")
	plt.ylabel("Posición")
	plt.legend()
	plt.grid(True)
	
	plt.figure(2)
	plt.plot(tiempo,control, color='blue',linestyle = '-')
	plt.title("Grafica Accion de Control")
	plt.xlabel("Tiempo")
	plt.ylabel("Acción de Control")
	plt.grid(True)
	
	plt.figure(3)
	plt.plot(tiempo,errorPlot, color='blue',linestyle = '-')
	plt.title("Grafica Error")
	plt.xlabel("Tiempo")
	plt.ylabel("Error")
	plt.grid(True)
	
	#Muestra las graficas
	plt.show()
	
	#	sleep(1)
	plt.close("all")
# -----------------------------------------------------------------------

try:
	# Variables globales
	posicion = 0
	posicion2 = 0

	# Configuración Rasp
	# -----------------------------------------------------------------------------------
	# Definición de pines BOARD
	RPWM = 32
	LPWM = 33
	EN_PWM = 35
	ENCODER_A = 11
	ENCODER_B = 13
	ENCODER_A2 = 16
	ENCODER_B2 = 15
	# Configuración de Raspberry Pi GPIO
	GPIO.setmode(GPIO.BOARD)
	GPIO.setup(RPWM, GPIO.OUT)
	GPIO.setup(LPWM, GPIO.OUT)
	GPIO.setup(EN_PWM, GPIO.OUT)
	GPIO.setup(ENCODER_A, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)	# Configurado como PullDown
	GPIO.setup(ENCODER_B, GPIO.IN)
	GPIO.setup(ENCODER_A2, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)	# Configurado como PullDown
	GPIO.setup(ENCODER_B2, GPIO.IN)

	# Configuracion que detecta flancos, bouncetiem dice que tan rapido lee el encoder
	GPIO.add_event_detect(ENCODER_A, GPIO.RISING, callback=actualizar_posicion,bouncetime= 100)
	GPIO.add_event_detect(ENCODER_A2, GPIO.RISING, callback=actualizar_posicion2,bouncetime= 100)


	# Crear objetos PWM
	rpwm = GPIO.PWM(RPWM, 1000)
	lpwm = GPIO.PWM(LPWM, 1000)
	en_pwm = GPIO.PWM(EN_PWM, 1000)
	# -----------------------------------------------------------------------------------------

	# Configura el servidor
	# ----------------------------------------------------------------------
	server_host = '192.168.1.42'  # Escucha en todas las interfaces de red
	server_port = 1342  # Puerto de escucha (puedes usar cualquier número de puerto)
	print(f"Esperando conexiones en {server_host}:{server_port}")
	
	# Crea el socket del servidor
	server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	server_socket.bind((server_host, server_port))
	server_socket.listen(1)  # Acepta una sola conexión entrante

	# Acepta una conexión entrante
	client_socket, client_address = server_socket.accept()
	print(f"Conectado a {client_address}")
	# ----------------------------------------------------------------------

	while True:
		# Datos recibidos
		data = client_socket.recv(1024).decode()
		
		#Si se desconecta el cliente
		if not data:
			print("El cliente se ha desconectado")
			break
			
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

#		sleep(50)
		#Inicializar listas, (tiempo,posicion,AccionControl,posicionDeseada y error)
		tiempo=[]
		pos = []
		control = []
		pdPlot=[]
		errorPlot = []

		# Reinicio Variables globales
		if(rein):
			posicion = 0
			posicion2 = 0

		# Inicializar PWM
		rpwm.start(0)
		lpwm.start(0)
		en_pwm.start(100)

		# Inicializar parametros control	
		errorAnt = 0
		tiempoAnterior = 0
		t = 0
		i=1 	# Para agregar el primer elemento, que la diferencia de tiempo es mucha
		direccion = 0

		# ~ while abs(error)>0.001:			#Esto es para parar el ciclo por error
		
		while t<tSimulacion:				#Esto es para parar el ciclo por tiempo
			#Calculo del tiempo
			tiempoActual=time()
			deltaTiempo = tiempoActual-tiempoAnterior	#Diferencia de tiempo
			tiempoAnterior = tiempoActual			# El tiempo anterior se convierte en el actual
			
			#Calculo distancia
			mediaEncoder = (posicion + posicion2)/2
			
			#Calculo parte derivativa
			error = pd-mediaEncoder				# Calculo del error
			dError = (error-errorAnt)/deltaTiempo		# Derivada del tiempo
			errorAnt = error				

			# Ley de control
			u = kp*error+kd*dError
#			sleep(1)

			# Cambio de dirección dependiendo la ley de control
			if(u<0):
				direccion=-1
			else:
				direccion=1

			#Saturacion
			if(abs(u)>10):
				u=10
			else:
				u=abs(u)

			# Llamada al control de motores
			setMotor(direccion,abs(u))

			if i==1:
				i+=1
				t += 0
			else:
				t += deltaTiempo

			print("Tiempo = ",t)
			tiempo.append(t)		#Añade el tiempo

			# Imprimir la posición actual del encoder
			print("Posición encoder 1:", posicion)
			print("Posicion encoder 2:", posicion2)
			pos.append((posicion+posicion2)/2)		# Añadir a la lista la posicion actual
			pdPlot.append(pd)		# Añade a la lista la posición deseada

			# Imprimir error
			print("Error: ",error)
			errorPlot.append(error)		# Añade el error

			#Imprimir control
			print("El control es de: ",u)
			control.append(u)		# Añade la acción de control

			sleep(0.1)	# Para evitar problemas de lectura de datos
		setMotor(direccion,0)

		# Datos que deseas enviar al cliente (en formato de diccionario)
		datos_a_enviar = {
			"comando": "Graficas",
			"parametros": {
				"tiempo": tiempo,
				"pos": pos,
				"pdPlot": pdPlot,
				"control": control,
				"errorPlot": errorPlot
			}
		}

		# Convertir los datos a JSON
		data_json = json.dumps(datos_a_enviar)
		data_length = len(data_json)

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
		sleep(.1)
		#muestraGraficas(tiempo,pos,pdPlot,control,errorPlot)

except KeyboardInterrupt:
	pass

finally:
	# Detener PWM y limpiar GPIO
	print("Cerrando conexiones...")
	print("Adios :D")
	sleep(2)
	rpwm.stop()
	lpwm.stop()
	en_pwm.stop()
	GPIO.cleanup()
