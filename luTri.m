clc
clear all
A= randi(100,5);
n=size(A);
b = randi(10,5,1);
L=eye(n);
for i=1:n
 for j=1:n
 if(abs(i-j)>1)
 A(i,j)=0;
 end
 end
end
U=A;
if det(A)==0
 disp("Inverse doesn't exist")
else
 for i = 1:n-1
 L(i+1,i)=U(i+1,i)/U(i,i);
 U(i+1,:) = U(i+1,:)- (U(i+1,i)/U(i,i)) * U(i,:);
 %b(i+1)=b(i+1)-U(i+1,i)/U(i,i)*b(i);
 end
end

