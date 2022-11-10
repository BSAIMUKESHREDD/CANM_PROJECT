clc
clear all
A = full(gallery('tridiag',10,1,2,1));
n=size(A);
b = randi(10,10,1);
c=[];
k=[];
p=eye(n);

L=eye(n);
U=A;
if det(A)==0
    disp("Inverse doesn't exist")
else
    dia = diag(U);
    for i=1:n-1
            if(U(i,i)<U(i+1,i))
                % no need of permutation matrix
                %{
                z=p(i,:);
                 l=p(i+1,:);
                 p(i+1,:)=z;
                 p(i,:)=l;
              
                %}
                c=U(i,:);
                k=b(i);
                U(i,:)=U(i+1,:);
                b(i)=b(i+1);
                U(i+1,:)=c;
                b(i+1)=k;
           end
    end
    
   
    for i = 1:n-1
            L(i+1,i)=U(i+1,i)/U(i,i);
            U(i+1,:) = U(i+1,:)- U(i+1,i)/U(i,i) * U(i,:);
            b(i+1)=b(i+1)-U(i+1,i)/U(i,i)*b(i);
        
    end

end
A;
U;
L;
d=L\b;
x=U\d;
bans = A*x;



p;



