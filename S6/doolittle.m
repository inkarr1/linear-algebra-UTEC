function [L U]=doolittle(A)
    n=size(A,1);
    for k=1:n-1
        i=k+1:n
        A(i,k)=A(i,k)/A(k,k);
        A(i,i)=A(i,i)-A(i,k)*A(k,i);
    end
    L=tril(A,-1)+eye(n,n);
    U=triu(A);
end