function Dibujar_Diferencial (p,Lr)
	x = p(1);
    y = p(2);
    theta = p(3);

    l = Lr*0.2;
    L = Lr*0.4;
    
    axis([-2 2 -2 2])
    hold on
    grid on
    xlabel('x')
    ylabel('y')
    
    % Base
    phi = linspace(0,2*pi,50);
    cx = x + (Lr-l)*cos(phi); 
    cy = y + (Lr-l)*sin(phi);
    plot(cx,cy,'b','LineWidth',2,'MarkerSize',10)
    
    % Marcador delantero
    Tob = [cos(theta) -sin(theta) x; sin(theta) cos(theta) y; 0 0 1];
    Tbf = [1 0 (Lr*0.5); 0 1 0; 0 0 1];
    Tor = Tob*Tbf;
    
    cx = Tor(1,3) + (Lr*0.2)*cos(phi);
    cy = Tor(2,3) + (Lr*0.2)*sin(phi);
    plot(cx,cy,'r','LineWidth',2,'MarkerSize',10)
    
    % Ruedas laterales
    Tbl = [1 0 0; 0 1 Lr; 0 0 1];
    Tbr = [1 0 0; 0 1 -Lr; 0 0 1];
    Tol = Tob*Tbl;
    Tor = Tob*Tbr;
    
    p1 = Tol*[+L -l 1]';
    p2 = Tol*[-L -l 1]';
    p3 = Tol*[+L +l 1]';
    p4 = Tol*[-L +l 1]';
    line([p1(1) p2(1)],[p1(2) p2(2)],'LineWidth',2,'MarkerSize',10,'color',[0 0 1])
    line([p1(1) p3(1)],[p1(2) p3(2)],'LineWidth',2,'MarkerSize',10,'color',[0 0 1])
    line([p2(1) p4(1)],[p2(2) p4(2)],'LineWidth',2,'MarkerSize',10,'color',[0 0 1])
    line([p3(1) p4(1)],[p3(2) p4(2)],'LineWidth',2,'MarkerSize',10,'color',[0 0 1])

    p1 = Tor*[+L -l 1]';
    p2 = Tor*[-L -l 1]';
    p3 = Tor*[+L +l 1]';
    p4 = Tor*[-L +l 1]';
    line([p1(1) p2(1)],[p1(2) p2(2)],'LineWidth',2,'MarkerSize',10,'color',[0 0 1])
    line([p1(1) p3(1)],[p1(2) p3(2)],'LineWidth',2,'MarkerSize',10,'color',[0 0 1])
    line([p2(1) p4(1)],[p2(2) p4(2)],'LineWidth',2,'MarkerSize',10,'color',[0 0 1])
    line([p3(1) p4(1)],[p3(2) p4(2)],'LineWidth',2,'MarkerSize',10,'color',[0 0 1])
  