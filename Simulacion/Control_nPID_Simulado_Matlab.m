clear all
close all
clc

%% Posición Deseada
xd = -1;
yd = 0;      %Posición Deseada
p = [0.0 0.0 0]';                %Posición Actual
dp = [0 0 0]';                   %Vx, Vy, Vw
v=0;
w=0;

%% Variables agregadas de red neuronal
eAx = 0;    %Error anterior en x
d_ex = 0;   %Derivada del error en x
i_ex = 0;   %Integral del error en x
etax = 0.1;   %Eta para x
ey = 0;     %Error en y
eAy = 0;    %Error anterior en y   
d_ey = 0;   %Derivada del error en y
i_ey = 0;   %Integral del error en y
etay = 0.1;   %Eta para y
d = 0.1;    %Distancia al punto de control
alpha = 0.05; %Alpha
beta = 1;

%% Creación de la red neuronal
% Create nPID objects
neurona_x = nPID(3, beta, alpha);
neurona_y = nPID(3, beta, alpha);

%% Ganancias de control
kv = 0.0;
kw = 0.0;

R = 2.3/100;     %Radio de la rueda dentada
L = 18/100;      %Distancia del centro de una llanta al centro del carrito
D = 35/100;      %Distancia del eje de la llanta dentada al punto a controlar

%% Propiedades simulación
t = 0.01;       % Paso entre muestra
s = 30;          % Tiempo simulación
n = s/t;        % Numero de muestras

%% Inicialización Gráficas
t_plot = t:t:s;
p_plot = zeros(3,n);
pp_plot = zeros(3,n);
c_plot = zeros(2,n);
e_plot = zeros(2,n);
r_plot = zeros(2,n);

%% Ciclo de iterción
for i = 1:n
    %% Control
    % Obtenemos la posición
    x = p(1);
    y = p(2);
    theta = p(3);

    % Y la posición adelantada para el control en ese punto
    xp = x + d*cos(theta);
    yp = y + d*sin(theta);

    % Calculamos los errores de posición
    ex = xd - xp;
    ey = yd - yp;
    
    % Actualizamos el termino integral
    i_ex = (i_ex + ex)*(1/t);
    i_ey = (i_ey + ey)*(1/t);
    
    % El termino derivativo
    d_ex = ex - eAx;
    d_ey = ey - eAy;
    
    % Y el termino del error anterior
    eAx = ex;
    eAy = ey;

    % Agrupamos en un vector
    error_x = [ex, i_ex, d_ex]';
    error_y = [ey, i_ey, d_ey]';
    
    % Obtenemos la señal de control para cada error
    kx = neurona_x.control_u(error_x);
    ky = neurona_y.control_u(error_y);

    % Ajustamos el modelo
    neurona_x.fit(ex, error_x,alpha);
    neurona_y.fit(ey, error_y, alpha);

    % Construir el vector de ganancias
    errores = [kx, ky];

    % Construct model matrix
    matriz_modelo = [cos(theta), -d*sin(theta); sin(theta), d*cos(theta)];
    
    % Compute control inputs
    % u = matriz_modelo \ [kx; ky];
    u = pinv(matriz_modelo) * [kx;ky];
    disp(u);

    v = u(1);            %Control velocidad lineal
    w = u(2);            %Control velocidad lineal

    c_plot(:,i)=[v w]';

    %% Control Ruedas
    wr = (2*v+w*L)/(2*R);
    wl = (2*v-w*L)/(2*R);

    r_plot (:,i)=[wr wl]';

     % Check if position is close to desired
    % if abs(ex) < 0.01 && abs(ey) < 0.01
    %     v = 0;
    %     w = 0;
    %     break;
    % end
    
    %% Cinematica Diferencial
    dp(1) = (R/2)*(wr+wl)*cos(p(3));
    dp(2) = (R/2)*(wr+wl)*sin(p(3));
    dp(3) = (R/L)*(wr-wl);
    
    p_plot(:,i) = p;                    % Grafica la posición
    pp_plot(:,i) = dp;                  % Grafica la velocidad

    p = p + dp*t;                       % Paso Integración 

    cla
    Dibujar_Diferencial(p,L)
    drawnow
end

figure(1)
hold on
grid on
plot(p_plot(1,:),p_plot(2,:),'b--.','LineWidth',2)
plot(xd,xd,'r*','LineWidth',2)
title('Trayectoria Diferencial','FontSize',12)
Dibujar_Diferencial(p,L)
xlabel('x')
ylabel('y')
% saveas(1,'Trayectoria.png')

figure(2)
hold on
grid on
plot(t_plot,p_plot(1,:),'b--','LineWidth',1)
plot(t_plot,p_plot(2,:),'r--','LineWidth',2)
plot(t_plot,p_plot(3,:),'g--','LineWidth',3)
legend('$x$','$y$','$\theta$','Interpreter','latex')
title('Posición','FontSize',12)
xlabel('Segundos')
ylabel('m & rad','FontSize',12)
% saveas(2,'Posicion.png')


figure(3)
hold on
grid on
plot(t_plot,pp_plot(1,:),'b--','LineWidth',1)
plot(t_plot,pp_plot(2,:),'r--','LineWidth',2)
plot(t_plot,pp_plot(3,:),'g--','LineWidth',3)
legend('$\dot{x}$','$\dot{y}$','$\dot{\theta}$','Interpreter','latex')
title('Velocidades','FontSize',12)
xlabel('Segundos')
ylabel('m & rad / seg', 'FontSize',12)
% saveas(3,'Velocidades.png')

figure(4)
hold on
grid on
plot(t_plot,c_plot(1,:),'b--','LineWidth',1)
plot(t_plot,c_plot(2,:),'r--','LineWidth',2)
legend('V','W')
title('Control Velocidades','FontSize',12)
xlabel('Segundos')
ylabel('m & rad / seg', 'FontSize',12)
% saveas(4,'Control.png')

figure(6)
hold on
grid on
plot(t_plot,r_plot(1,:),'b--','LineWidth',1)
plot(t_plot,r_plot(2,:),'r--','LineWidth',2)
legend('$W_{r}$','$W_l$','Interpreter','latex')
title('Control Ruedas','FontSize',12)
xlabel('Segundos')
ylabel('m & rad / seg', 'FontSize',12)
% saveas(6,'ControlR.png')

figure(5)
hold on
grid on
plot(t_plot,e_plot(1,:),'b--','LineWidth',1)
plot(t_plot,e_plot(2,:),'r--','LineWidth',2)
legend('Ek','Ew')
legend('$E_{k}$','$E_w$','Interpreter','latex')
title('Cambio Error','FontSize',12)
xlabel('Segundos')
ylabel('m & rad', 'FontSize',12)
% saveas(5,'Error.png')

% close all
