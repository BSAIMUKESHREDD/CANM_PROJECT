clc
clear all
A= randi(100,5)
n=size(A);
b = randi(100,5,1)
c=[];
k=[];
p=eye(n);

L=eye(n)
U=A
if det(A)==0
    disp("Inverse doesn't exist")
else
    dia = diag(U);
    for i=1:n
        for j=i:n
            if(U(i,i)<U(j,i))
               
                z=p(i,:);
                 l=p(j,:);
                 p(j,:)=z;
                 p(i,:)=l;

                c=U(i,:);
                k=b(i);
                U(i,:)=U(j,:);
                b(i)=b(j);
                U(j,:)=c;
                b(j)=k;
           end
       end
    end
   
    for i = 1:n-1
        for j=i+1:n
            L(j,i)=U(j,i)/U(i,i);
            U(j,:) = U(j,:)- U(j,i)/U(i,i) * U(i,:);
            b(j)=b(j)-U(j,i)/U(i,i)*b(i);
        end
    end
U
L
d=L\b
x=U\d
A*x

end