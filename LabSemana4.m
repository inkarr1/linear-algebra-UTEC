% Actividad de la semana 4

clc
% Caso 1: tiene solución única
A=[1 2 -3;-3 -1 -1;1 -1 1]
b=[5 ;-8; 0]
% resolución
x=linsolve(A,b)
x=A\b
x=inv(A)*b

% caso 2: Tiene infinitas soluciones
clear all
clc
A=[2 4;1 2]
b=[22 11]'
% resolución
% x=linsolve(A,b)
% x=A\b
% x=inv(A)*b

% caso 3: No tiene solución
clear all
clc
A=[2 4;1 2]
b=[22 10]'
% resolución
% x=linsolve(A,b)
 % x=A\b
 % x=inv(A)*b
% Pregunta 2: Espacio nulo de una matriz
A=[2 -1 3;4 -2 6;-6 3 -9]
b=[2 -1 1]'
c=[-2 -1 1]'
d=[-2 11 5]'
% Código que indica si el vector b pertenece al espacio nulo de A

