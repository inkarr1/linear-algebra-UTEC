% P1
% T el cuadro de medallas en tokio 2020
T = [39 22 38 20 10; 41 21 32 28 11; 33 22 18 23 16]

% P2
% R el cuadro de medallas de Río 2016
R = [46 37 38; 27 23 17; 26 18 26; 19 17 20; 17 10 15]
R'

% MT Cantidad de medallas de cada tipo obtenido por cada país
MT = R' + T

% P3
% P: Matriz de aporte de patrocinadores
P = [20000 30000 27000 25000 10000]'

% Q: Matriz de aporte esperado de patrocinadores para Francia 2024
Q = 1.2 * P

% P4
% pmedalla
pmedalla = [94000 48000 30000]'
% cantidad de medallas obtenidas por china
mchina = T(:,3)'
%resultado
premiochina = mchina * pmedalla

% premio total por país
PT = T'*pmedalla