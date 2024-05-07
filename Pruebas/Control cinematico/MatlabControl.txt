import numpy as np
import matplotlib.pyplot as plt

def Dibujar_Diferencial(p, L):
    # Dibuja el robot diferencial
    x = p[0]
    y = p[1]
    theta = p[2]

    # Define las coordenadas de los puntos del robot
    puntos_robot = np.array([
        [x + L/2 * np.cos(theta), y + L/2 * np.sin(theta)],
        [x - L/2 * np.cos(theta), y - L/2 * np.sin(theta)],
        [x - L/2 * np.cos(theta) - L/5 * np.sin(theta), y - L/2 * np.sin(theta) + L/5 * np.cos(theta)],
        [x - L/2 * np.cos(theta) + L/5 * np.sin(theta), y - L/2 * np.sin(theta) - L/5 * np.cos(theta)],
        [x + L/2 * np.cos(theta) + L/5 * np.sin(theta), y + L/2 * np.sin(theta) - L/5 * np.cos(theta)],
        [x + L/2 * np.cos(theta) - L/5 * np.sin(theta), y + L/2 * np.sin(theta) + L/5 * np.cos(theta)],
        [x + L/2 * np.cos(theta), y + L/2 * np.sin(theta)]
    ])

    # Dibuja las líneas del robot
    plt.plot(puntos_robot[:, 0], puntos_robot[:, 1], 'k')
    plt.plot([puntos_robot[0, 0], puntos_robot[1, 0]], [puntos_robot[0, 1], puntos_robot[1, 1]], 'k')
    plt.plot([puntos_robot[1, 0], puntos_robot[2, 0]], [puntos_robot[1, 1], puntos_robot[2, 1]], 'k')
    plt.plot([puntos_robot[1, 0], puntos_robot[3, 0]], [puntos_robot[1, 1], puntos_robot[3, 1]], 'k')
    plt.plot([puntos_robot[0, 0], puntos_robot[4, 0]], [puntos_robot[0, 1], puntos_robot[4, 1]], 'k')
    plt.plot([puntos_robot[0, 0], puntos_robot[5, 0]], [puntos_robot[0, 1], puntos_robot[5, 1]], 'k')
    plt.plot([puntos_robot[4, 0], puntos_robot[5, 0]], [puntos_robot[4, 1], puntos_robot[5, 1]], 'k')

# Posición Deseada
xd = np.array([1.5, 1.5])      # Posición Deseada
p = np.array([0.0, 0.0, 0.0])  # Posición Actual
dp = np.array([0, 0, 0])       # Vx, Vy, Vw
v = 0
w = 0

# Ganancias de control
kv = 0.5
kw = 0.7

# Propiedad Robot
R = 1    # Radio Llantas
L = 0.4  # Distancia centro a alguna de las ruedas

# Propiedades simulación
t = 0.01  # Paso entre muestra
s = 30    # Tiempo simulación
n = int(s/t)  # Numero de muestras

# Inicialización Gráficas
t_plot = np.linspace(t, s, n)
p_plot = np.zeros((3, n))
pp_plot = np.zeros((3, n))
c_plot = np.zeros((2, n))
e_plot = np.zeros((2, n))
r_plot = np.zeros((2, n))

# Ciclo de iteración
for i in range(n):
    # Control
    ev = np.sqrt((xd[0]-p[0])**2 + (xd[1]-p[1])**2)  # Error lineal
    
    theta_d = np.arctan2(xd[1]-p[1], xd[0]-p[0])
    ew = theta_d - p[2]
    ew = np.arctan2(np.sin(ew), np.cos(ew))  # Error Angular
    e_plot[:, i] = np.array([ev, ew])

    v = kv * ev  # Control velocidad lineal
    w = kw * ew  # Control velocidad angular
    c_plot[:, i] = np.array([v, w])

    # Control Ruedas
    wr = (2*v + w*L) / (2*R)
    wl = (2*v - w*L) / (2*R)
    r_plot[:, i] = np.array([wr, wl])

    # Cinemática Diferencial
    dp[0] = (R/2) * (wr + wl) * np.cos(p[2])
    dp[1] = (R/2) * (wr + wl) * np.sin(p[2])
    dp[2] = (R/L) * (wr - wl)

    p_plot[:, i] = p  # Grafica la posición
    pp_plot[:, i] = dp  # Grafica la velocidad

    p = p + dp * t  # Paso Integración

# Gráficas
plt.figure(figsize=(10, 8))

plt.subplot(2, 2, 1)
plt.plot(p_plot[0, :], p_plot[1, :], 'b--.', linewidth=2)
plt.plot(xd[0], xd[1], 'r*', linewidth=2)
plt.title('Trayectoria Diferencial', fontsize=12)
Dibujar_Diferencial(p, L)
plt.xlabel('x')
plt.ylabel('y')

plt.subplot(2, 2, 2)
plt.plot(t_plot, p_plot[0, :], 'b--', linewidth=1, label='x')
plt.plot(t_plot, p_plot[1, :], 'r--', linewidth=2, label='y')
plt.plot(t_plot, p_plot[2, :], 'g--', linewidth=3, label='theta')
plt.legend()
plt.title('Posición', fontsize=12)
plt.xlabel('Segundos')
plt.ylabel('m & rad')

plt.subplot(2, 2, 3)
plt.plot(t_plot, pp_plot[0, :], 'b--', linewidth=1, label='vx')
plt.plot(t_plot, pp_plot[1, :], 'r--', linewidth=2, label='vy')
plt.plot(t_plot, pp_plot[2, :], 'g--', linewidth=3, label='vtheta')
plt.legend()
plt.title('Velocidades', fontsize=12)
plt.xlabel('Segundos')
plt.ylabel('m & rad / seg')

plt.subplot(2, 2, 4)
plt.plot(t_plot, c_plot[0, :], 'b--', linewidth=1, label='V')
plt.plot(t_plot, c_plot[1, :], 'r--', linewidth=2, label='W')
plt.legend()
plt.title('Control Velocidades', fontsize=12)
plt.xlabel('Segundos')
plt.ylabel('m & rad / seg')

plt.tight_layout()
plt.show()
