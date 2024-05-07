import RPi.GPIO as GPIO
from time import sleep,time
import matplotlib.pyplot as plt

# Pin del motor:
	#Rojo motor+
	#Negro motor-
	#Verde gnd
	#Azul vcc encoder 3.3V
	#Amarillo salida A, encoder adelante activa primero este
	# Blanco salida b, encoder reversa activa primero este

#Parte de Control
# Posición deseada encoder
pd =100
#Ganancias
kp = 10
kd = 0.005

tSimulacion = 20		# Tiempo Simulación

#Inicializar listas, (tiempo,posicion,AccionControl,posicionDeseada y error)
tiempo=[]		
pos = []
control = []
pdPlot=[]	
errorPlot = []

# Definición de pines del tipo BOARD
RPWM = 32
LPWM = 33
EN_PWM = 35
ENCODER_A = 11
ENCODER_B = 13

# Variables globales
posicion = 0

def actualizar_posicion(channel):
    global posicion
    if GPIO.input(ENCODER_A) == GPIO.HIGH:	#Cuando detecta el flanco A 
        if GPIO.input(ENCODER_B) == GPIO.LOW:	#Si el flanco B esta abajo, se movió hacia adelante
            posicion += 1
        else:					#Sino pos se movió para atras
            posicion -= 1
    print("Posición:", posicion)
    
def setMotor(direccion,u):
	if(direccion==1):
		rpwm.ChangeDutyCycle(abs(u))  # ajusta según el control
		lpwm.ChangeDutyCycle(0)  # Si se mueve para adelante, entonces el lpwm es 0
	else:
		lpwm.ChangeDutyCycle(abs(u))  # ajusta según el control
		rpwm.ChangeDutyCycle(0)  # Si se mueve para atras, entonces el rpwm es 0

try:
	# Configuración de Raspberry Pi GPIO
	GPIO.setmode(GPIO.BOARD)
	GPIO.setup(RPWM, GPIO.OUT)
	GPIO.setup(LPWM, GPIO.OUT)
	GPIO.setup(EN_PWM, GPIO.OUT)
	GPIO.setup(ENCODER_A, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)	# Configurado como PullDown
	GPIO.setup(ENCODER_B, GPIO.IN)
	GPIO.add_event_detect(ENCODER_A, GPIO.RISING, callback=actualizar_posicion,bouncetime= 100)  # Configuracion que detecta flancos, bouncetiem dice que tan rapido lee el encoder

	# Crear objetos PWM
	rpwm = GPIO.PWM(RPWM, 1000)
	lpwm = GPIO.PWM(LPWM, 1000)
	en_pwm = GPIO.PWM(EN_PWM, 1000)

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
		
		#Calculo parte derivativa
		error = pd-posicion				# Calculo del error
		dError = (error-errorAnt)/deltaTiempo		# Derivada del tiempo
		errorAnt = error				
		
		# Ley de control
		u = kp*error+kd*dError
		
		# Cambio de dirección dependiendo la ley de control
		if(u<0):
			direccion=-1
		else:
			direccion=1

		#Saturación
#		if(abs(u)>10):
#			u=15
		u=60
		# Llamada al control de motores
		setMotor(direccion,abs(u))	
		
		if(i==1):
			i+=1
			t += 0
		else:
			t += deltaTiempo
				
		print("Tiempo = ",t)
		tiempo.append(t)		#Añade el tiempo
			
		# Imprimir la posición actual del encoder
		print("Posición:", posicion)
		pos.append(posicion)		# Añadir a la lista la posicion actual
		pdPlot.append(pd)		# Añade a la lista la posición deseada
		
		# Imprimir error
		print("Error: ",error)
		errorPlot.append(error)		# Añade el error
		
		#Imprimir control
		print("El control es de: ",u)
		control.append(u)		# Añade la acción de control
		
		sleep(0.1)	# Para evitar problemas de lectura de datos

except KeyboardInterrupt:
    pass

finally:
	# Detener PWM y limpiar GPIO
	rpwm.stop()
	lpwm.stop()
	en_pwm.stop()
	GPIO.cleanup()
	
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
