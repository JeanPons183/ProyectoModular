classdef nPID
    properties
        w
        beta
        y
        P
        Q
        R
        alpha
        v
    end
    
    methods
        function obj = nPID(n, beta, alpha)            
            obj.w = rand(n, 1);
            obj.beta = beta;
            obj.alpha = alpha;
            obj.y = 0;
            obj.P = eye(n) * 10;
            obj.Q = eye(n);
            obj.R = 0.1;
        end
        
        function y = control_u(obj, x, alpha)
            if nargin < 3
                alpha = 0.05;
            end
            
            obj.alpha = alpha;
            obj.v = obj.w' * x;
            obj.y = tanh(obj.v * obj.alpha);
            y = obj.y * obj.beta;
        end
        
        function fit(obj, error, x, eta)
            if nargin < 4
                eta = 0.01;
            end
            
            H = obj.get_H(x);
            H = reshape(H, [3, 1]);
            PH = obj.P * H;
            matriz = obj.R + H' * PH;
            inv_matriz = inv(matriz);
            k = PH * inv_matriz;
            
            delta_w = eta * k * error;
            obj.w = obj.w + delta_w;
            obj.P = obj.P - k * H' * obj.P + obj.Q;
        end
        
        function H = get_H(obj, x)
            disp(x)
            disp(obj.y)
            del_phi = (1 - obj.y * obj.y) * x * obj.beta * obj.alpha;
            H = del_phi;
        end
    end
end

% classdef nPID
%     properties
%         w       % Pesos
%         beta    % Parámetro beta
%         y       % Salida
%         P       % Matriz de ganancia P
%         Q       % Matriz de ganancia Q
%         R       % Matriz de ganancia R
%     end
% 
%     methods
%         function obj = nPID(n, beta)
%             if nargin < 2
%                 n = 3;  % Valor predeterminado para n
%                 beta = 1;  % Valor predeterminado para beta
%             end
%             obj.w = rand(n, 1);
%             obj.beta = beta;
%             obj.y = 0;
%             obj.P = eye(n) * 10;
%             obj.Q = eye(n);
%             obj.R = 0.1;
%         end
% 
%         function u = control_u(obj, x, alpha)
%             if nargin < 3
%                 alpha = 0.05;  % Valor predeterminado para alpha
%             end
%             v = obj.w' * x;
%             obj.y = tanh(v * obj.beta * alpha);
%             u = obj.y * obj.beta;
%         end
% 
%         function fit(obj, error, x, alpha, eta) % Se agrega alpha como argumento
%             if nargin < 5
%                 eta = 0.01;  % Valor predeterminado para eta
%             end
%             H = obj.get_H(x, obj.beta, alpha); % Se pasan beta y alpha como argumentos
%             PH = obj.P * H;
%             matriz = obj.R + H' * PH;
%             invMatriz = pinv(matriz);
%             k = PH * invMatriz;
% 
%             delta_w = eta * k * error;
%             obj.w = obj.w + delta_w;
%             obj.P = obj.P - k * (H' * obj.P) + obj.Q;
%         end
% 
%         function H = get_H(obj, x, beta, alpha) % Se agregan beta y alpha como argumentos
%             H = (1 - obj.y*obj.y) * x * beta * alpha;
%         end
%     end
% end
