import numpy as np
import matplotlib.pyplot as plt
import math


# Reescribiendo el controlador
R = 0 #Radio de la rueda dentada
L = 0 #Distancia del centro de una llanta al centro del carrito
D = 0 #Distancia del eje de la llanta dentada al punto a controlar

# Ganancias de control
kx = 0 #Para la velocidad lineal
ky = 0 #Para la velocidad angular

pd = [0, 0] #Posicion deseada

p = [0, 0, 0] #Pose inicial
pp = [0, 0, 0] #Velocidades iniciales [vx, vy, w]

# Definir el punto que será controlado
xp = p[0] + D * math.cos(p[3])
yp = p[1] + D * math.sin(p[3])

#Error entre la posición actual y la deseada
ex = pd[0] - xp
ey = pd[1] - yp

#Calculamos la velocidad angular
#w = np.array([[(math.cos(p[2])/2)-(D*math.sin(p[2]))/L,],[3,4]])
w = np.zeros((2,1))

# Definición de la matriz
A = np.array([
    [np.cos(p[2])/2 - (D*np.sin(p[2]))/L, np.cos(p[2])/2 + (D*np.sin(p[2]))/L],
    [np.sin(p[2])/2 + (D*np.cos(p[2]))/L, np.sin(p[2])/2 - (D*np.cos(p[2]))/L]
])

# Matriz del sistema
B = np.array([
    [kx, 0],
    [0, ky]
])

# Vector de entrada
C = np.array([ex, ey])

# Cálculo del resultado
w = (1/R) * np.linalg.inv(A) @ B @ C

#Revisar distribución de motores
wr = w[0]
wl = w[1]
