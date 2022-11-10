a=[10 6 7 8]
b=[3 3 3 5]
c = [6 6 10 5]
d=[2 9 3 1]

main = [a;b;c;d]

an = inv(main)
e=b-0.3*a;
f=c-0.6*a;
g=d-0.2*a;

h = f-2*e;
i=g-6.5*e;

j= i+1.0625*h;


ans1=[a;e;h;j];