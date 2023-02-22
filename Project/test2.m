x=-1*[-4 -2 0 -4 -6 -4 -2 -4 -6 -6 -4 -4 -6 -6 -2 6 12 8 0 -16 -38 -60 -84 -90 -66 -32 -4 -2 -4 8 12 12 10 6 6 6 4 0 0 0 0 0 -2 -4 0 0 0 -2 -2 0 0 -2 -2 -2 -2 0];
m=length(x);
y=zeros(1,m);
z=zeros(1,m);
k=zeros(1,m);
b=0;c=0;d=0;e=0;
for i=1:m
    a=x(1,i);
    y(1,i)=(a+2*b+c)/4;
    c=b;b=a;
end
b=0;c=0;d=0;e=0;
for h=1:m
    a=x(1,h);
    z(1,h)=(-3*a+12*b+17*c+12*d-3*e)/35;
    e=d;d=c;c=b;b=a;
end
b=0;c=0;d=0;e=0;
for j=1:m
    a=x(1,j);
    k(1,j)=(a-c)/2;
    c=b;b=a;
end
subplot(221);plot(x);
subplot(222);plot(y);
subplot(223);plot(z);
subplot(224);plot(k);