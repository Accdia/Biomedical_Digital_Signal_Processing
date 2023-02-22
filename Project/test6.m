clear;
x=-1*[-4 -2 0 -4 -6 -4 -2 -4 -6 -6 -4 -4 -6 -6 -2 6 12 8 0 -16 -38 -60 -84 -90 -66 -32 -4 -2 -4 8 12 12 10 6 6 6 4 0 0 0 0 0 -2 -4 0 0 0 -2 -2 0 0 -2 -2 -2 -2 0];
subplot(311);plot(x);
N=length(x);
o=1;p=1;f=1;e=2;
while o<N-2
    n=x(o)-x(o+f);
    m=x(o)-x(o+e);
    if ((n<0)&&(m<0))||((n>0)&&(m>0))
        y(p)=x(o+e);
        o=o+e;
        p=p+1;
        f=1;e=2;
    else 
      y(p)=x(o+f);
      o=o+f;
      p=p+1;
      f=2;e=3;
    end
end
w(1)=4;
for i=2:N/2-1
    w(i+1)=y(i);
end
subplot(312);plot(w);
M=length(w);
t(1)=w(1);t(2)=w((1)+w(2))/2;t(3)=w(2);
u=2;q=4;
while u<M
    h=(w(u)+w(u+1))/2;
    t(q)=h;
    t(q+1)=w(u+1);
    u=u+1;q=q+2;
end
c=0;v=0;b=0;
for g=1:M
    c=(t(g)-x(g))^2;
    v=c+v;
    b=b+x(g)^2;
end
Q=(v/b)^0.5;
subplot(313);plot(t);