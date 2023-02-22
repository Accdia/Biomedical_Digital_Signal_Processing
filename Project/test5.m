a=EEGDATA;
fs=500;t=0.5;
c=zeros(1,fs*t);
w=zeros(1,fs*t);
g=zeros(1,fs*t);
N=20;M=100;L=200;
for n1=1:N
    for k1=1:fs*t
    y(k1)=a((n1-1)*fs*t*2+k1);
    c(k1)=c(k1)+y(k1);
    end
end
for n2=1:M
    for k2=1:fs*t
    q(k2)=a((n2-1)*fs*t*2+k2);
    w(k2)=w(k2)+q(k2);
    end
end
for i3=1:L
    for k3=1:fs*t
    f(k3)=a((i3-1)*fs*t*2+k3);
    g(k3)=g(k3)+f(k3);
    end
end
c=c/N;w=w/M;g=g/L;
subplot(411);plot(a);
subplot(412);plot(c);
subplot(413);plot(w);
subplot(414);plot(g);