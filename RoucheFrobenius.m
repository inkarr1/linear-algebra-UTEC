function RoucheFrobenius(A,b)
[m,n]=size(A);
Aa=[A b];
RangA=rank(A);
RangAa=rank(Aa);
if (RangAa ~= RangA)
    fprintf('El sistema no tiene solucion \n')
elseif (RangA==n)
    fprintf('El sistema tiene solucion unica \n')
else
    fprintf('El sistema tiene infinitas soluciones\m')
end
end