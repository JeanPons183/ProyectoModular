import numpy as np
import matplotlib.pyplot as plt
import math
from npid import nPID

def dibujar_diferencial(p, Lr):
    x = p[0]
    y = p[1]
    theta = p[2]

    l = Lr * 0.2
    L = Lr * 0.4

    plt.axis([-2, 2, -2, 2])
    plt.xlabel('x')
    plt.ylabel('y')
    plt.grid(True)

    # Base
    phi = np.linspace(0, 2*np.pi, 50)
    cx = x + (Lr-l) * np.cos(phi)
    cy = y + (Lr-l) * np.sin(phi)
    plt.plot(cx, cy, 'b', linewidth=2, markersize=10)

    # Marcador delantero
    Tob = np.array([[np.cos(theta), -np.sin(theta), x],
                    [np.sin(theta), np.cos(theta), y],
                    [0, 0, 1]])
    Tbf = np.array([[1, 0, Lr*0.5],
                    [0, 1, 0],
                    [0, 0, 1]])
    Tor = np.dot(Tob, Tbf)

    cx = Tor[0, 2] + (Lr*0.2) * np.cos(phi)
    cy = Tor[1, 2] + (Lr*0.2) * np.sin(phi)
    plt.plot(cx, cy, 'r', linewidth=2, markersize=10)

    # Ruedas laterales
    Tbl = np.array([[1, 0, 0],
                    [0, 1, Lr],
                    [0, 0, 1]])
    Tbr = np.array([[1, 0, 0],
                    [0, 1, -Lr],
                    [0, 0, 1]])
    Tol = np.dot(Tob, Tbl)
    Tor = np.dot(Tob, Tbr)

    p1 = np.dot(Tol, [+L, -l, 1])
    p2 = np.dot(Tol, [-L, -l, 1])
    p3 = np.dot(Tol, [+L, +l, 1])
    p4 = np.dot(Tol, [-L, +l, 1])
    plt.plot([p1[0], p2[0]], [p1[1], p2[1]], linewidth=2, markersize=10, color='b')
    plt.plot([p1[0], p3[0]], [p1[1], p3[1]], linewidth=2, markersize=10, color='b')
    plt.plot([p2[0], p4[0]], [p2[1], p4[1]], linewidth=2, markersize=10, color='b')
    plt.plot([p3[0], p4[0]], [p3[1], p4[1]], linewidth=2, markersize=10, color='b')

    p1 = np.dot(Tor, [+L, -l, 1])
    p2 = np.dot(Tor, [-L, -l, 1])
    p3 = np.dot(Tor, [+L, +l, 1])
    p4 = np.dot(Tor, [-L, +l, 1])
    plt.plot([p1[0], p2[0]], [p1[1], p2[1]], linewidth=2, markersize=10, color='b')
    plt.plot([p1[0], p3[0]], [p1[1], p3[1]], linewidth=2, markersize=10, color='b')
    plt.plot([p2[0], p4[0]], [p2[1], p4[1]], linewidth=2, markersize=10, color='b')
    plt.plot([p3[0], p4[0]], [p3[1], p4[1]], linewidth=2, markersize=10, color='b')
    plt.grid()

    # Actualizar el gráfico
    plt.draw()
    plt.pause(0.001)

ex = 0      #Error de posición en x
eAx = 0     #Error anterior en x
i_ex = 0    #Integral del error en x
d_ex = 0    #Derivada del error en x
eta_X = 0   #Eta de x
ey = 0      #Error de posición en y
eAy = 0     #Error anterior en y
i_ey = 0    #Integral del error en y
d_ey = 0    #Derivada del error en y
eta_Y = 0   #Eta de y
ew = 0      #Error de theta

d = 1/100   #Distancia del eje de las ruedas al punto a controlar
t = 1       #Intervalos de tiempo

#Inicializamos los pesos de la red
neurona_x = nPID(3, 1) #Beta debe ser muy pequeña
neurona_y = nPID(3, 1)

xd = 1.5                          # Posición Deseada x
yd = 1.5                          # Posición Deseada y
p = np.array([0.0, 0.0, 0.0])     # Posición Actual
dp = np.array([0.0, 0.0, 0.0])    # Vx, Vy, Vw
v = 0.0
w = 0.0

R = 2.3/100     # Radio de la rueda dentada
L = 1/10      # Distancia del centro de una llanta al centro del carrito
D = 35/100      # Distancia del eje de la llanta dentada al punto a controlar

# Propiedades de la simulación
dt = 0.1        # Paso entre muestra
s = 30          # Tiempo de simulación
n = int(s/dt)    # Número de muestras

# Inicialización de las gráficas
t_plot = np.arange(dt, s+dt, dt)
p_plot = np.zeros((3, n))
pp_plot = np.zeros((3, n))
c_plot = np.zeros((2, n))
e_plot = np.zeros((2, n))
r_plot = np.zeros((2, n))

# Ciclo de iteración
for i in range(n):
    x = p[0]
    y = p[1]
    theta = p[2] % (2*np.pi) # Acotar theta entre +- 2pi

    #Posición del punto adelantado del carrito
    xp = x + d*math.cos(theta)
    yp = y + d*math.sin(theta)

    #Calculamos los erroes en cada eje
    ex = xd - xp
    ey = yd - yp

    e_plot[0, i] = ex
    e_plot[1, i] = ey

    #Verificar si llegó a la posición deseada
    if ex < 0.01 and ey < 0.01:
        break

    # Cálculo de la integral y la derivada de los errores
    i_ex = (i_ex + ex)*(1/t)
    d_ex = ex - eAx
    eAx = ex

    i_ey = (i_ey + ey)*(1/t)
    d_ey = ey - eAy
    eAy = ey

    # Vectores de errores
    error_x = np.array([ex, i_ex, d_ex])
    error_y = np.array([ey, i_ey, d_ey])

    # Control PID para las coordenadas x e y
    kx = neurona_x.control_u(error_x)
    neurona_x.fit(ex, error_x)

    ky = neurona_y.control_u(error_y)
    neurona_y.fit(ey, error_y,)

    # Vector de errores combinados
    errores = np.array([kx, ky])

    # Matriz modelo de la cinemática diferencial
    matriz_modelo = np.array([[np.cos(theta), -d*np.sin(theta)], [np.sin(theta), d*np.cos(theta)]])

    # Cálculo de las velocidades lineal y angular
    u = np.dot(np.linalg.inv(matriz_modelo), np.array([kx, ky]))

    '''#Control
    ev = np.sqrt((xd[0]-p[0])**2 + (xd[1]-p[1])**2)   # Error lineal
    theta_d = np.arctan2(xd[1]-p[1], xd[0]-p[0])
    ew = theta_d - p[2]
    ew = np.arctan2(np.sin(ew), np.cos(ew))           # Error Angular
    e_plot[:, i] = [ev, ew]'''

    v = u[0]      # Control velocidad lineal
    w = u[1]      # Control velocidad angular

    c_plot[0, i] = v[0]  # Extrae el primer elemento de v
    c_plot[1, i] = w[0]  # Extrae el primer elemento de w


# Control de las ruedas
    wr = (2*v + w*L) / (2*R)
    wl = (2*v - w*L) / (2*R)
    r_plot[0, i] = wr[0]
    r_plot[1, i] = wl[0]

    # Cinemática diferencial
    dp[0] = (R/2) * (wr[0] + wl[0]) * np.cos(p[2])
    dp[1] = (R/2) * (wr[0] + wl[0]) * np.sin(p[2])
    dp[2] = (R/L) * (wr[0] - wl[0])

    p_plot[:, i] = p     # Grafica la posición
    pp_plot[:, i] = dp   # Grafica la velocidad

    p = p + dp*dt         # Paso de integración

    t += 1

    # Dibujar el diferencial
    dibujar_diferencial(p, L)

# Crear una sola ventana para todos los gráficos
plt.figure(figsize=(12, 10))

# Gráfico 1: Trayectoria Diferencial
plt.subplot(3, 2, 1)
plt.plot(p_plot[0, :], p_plot[1, :], 'b--.', linewidth=2)
plt.plot(xd, yd, 'r*', markersize=10)
plt.title('Trayectoria Diferencial')
dibujar_diferencial(p, L)
plt.xlabel('x')
plt.ylabel('y')
plt.grid()

# Gráfico 2: Posición
plt.subplot(3, 2, 2)
plt.plot(t_plot, p_plot[0, :], 'b--', linewidth=1)
plt.plot(t_plot, p_plot[1, :], 'r--', linewidth=2)
plt.plot(t_plot, p_plot[2, :], 'g--', linewidth=3)
plt.legend(['$x$', '$y$', '$theta$'], loc='best')
plt.title('Posición')
plt.xlabel('Segundos')
plt.ylabel('m & rad')
plt.grid()

# Gráfico 3: Velocidades
plt.subplot(3, 2, 3)
plt.plot(t_plot, pp_plot[0, :], 'b--', linewidth=1)
plt.plot(t_plot, pp_plot[1, :], 'r--', linewidth=2)
plt.plot(t_plot, pp_plot[2, :], 'g--', linewidth=3)
plt.legend([r'$\dot{x}$', r'$\dot{y}$', r'$\dot{theta}$'], loc='best')
plt.title('Velocidades')
plt.xlabel('Segundos')
plt.ylabel('m & rad / seg')
plt.grid()

# Gráfico 4: Control Velocidades
plt.subplot(3, 2, 4)
plt.plot(t_plot, c_plot[0, :], 'b--', linewidth=1)
plt.plot(t_plot, c_plot[1, :], 'r--', linewidth=2)
plt.legend(['V', 'W'], loc='best')
plt.title('Control Velocidades')
plt.xlabel('Segundos')
plt.ylabel('m & rad / seg')
plt.grid()

# Gráfico 5: Cambio Error
plt.subplot(3, 2, 5)
plt.plot(t_plot, e_plot[0, :], 'b--', linewidth=1)
plt.plot(t_plot, e_plot[1, :], 'r--', linewidth=2)
plt.legend([r'$E_{k}$', r'$E_w$'], loc='best')
plt.title('Cambio Error')
plt.xlabel('Segundos')
plt.ylabel('m & rad')
plt.grid()

# Gráfico 6: Control Ruedas
plt.subplot(3, 2, 6)
plt.plot(t_plot, r_plot[0, :], 'b--', linewidth=1)
plt.plot(t_plot, r_plot[1, :], 'r--', linewidth=2)
plt.legend([r'$W_{r}$', r'$W_l$'], loc='best')
plt.title('Control Ruedas')
plt.xlabel('Segundos')
plt.ylabel('m & rad / seg')
plt.grid()

plt.tight_layout()
plt.show()