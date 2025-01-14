% P1
% Nota: Matriz A por la inversa de A es igual a la identidad de la matriz y
% la identidad por la matriz A es igual a A.
% k1 * M = C => k1^-1 * k1 * M = k1^-1 * C => I * M = k1^-1 * C => M = k1^-1 * C 

K1 = [1 -1; 0 1]
C = [6 0 2; 19 15 25]

% mensaje enviado
M = inv(K1) * C
% Siendo el mensaje: YO SOY