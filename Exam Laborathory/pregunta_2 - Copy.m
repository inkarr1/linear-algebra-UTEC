%complete su código aquí
A = [4 11 0; 10 -5 -3; 1 11 3]
b = [3; 5; -3]
[L,U]= doolittle(A)
sum_L = round(sum(L,'all'))

[y]=sustipro(L,b)

[x]=sustireg(U,y)

Vector_xy = x + y

sum_xy = round(sum(Vector_xy,'all'))

function [L,U]=crout(A)
[m,n]=size(A);
L=A;
U=eye(n);
for i=1:n-1
    pivo=L(i,i);
    for j=i+1:n
        U(i,j)=L(i,j)/pivo;
        L(:,j)=L(:,j)-U(i,j)*L(:,i);
    end
end
end


function [L U]=doolittle(A)
%factorizacion LU doolittle
n=size(A,1); %rescatamos la dimension
for k=1:n-1
    i=k+1:n;
    A(i,k)=A(i,k)/A(k,k);
    A(i,i)=A(i,i)-A(i,k)*A(k,i);
end
L=tril(A,-1)+eye(n,n);
U=triu(A);
end

function [y]=sustipro(L,b)
% L: Matriz triangular inferior
[m,n]=size(L);
y=zeros(n,1);
for k=1:n
    y(k)=(b(k)-L(k,1:k-1)*y(1:k-1))/L(k,k);
end
end

function [x]=sustireg(U,y)
% U: Matriz triangular superior
[m,n]=size(U);
x=zeros(n,1);
for k=n:-1:1
    x(k)=(y(k)-U(k,k+1:n)*x(k+1:n))/U(k,k);
end
end




