x=-1*[-4 -2 0 -4 -6 -4 -2 -4 -6 -6 -4 -4 -6 -6 -2 6 12 8 0 -16 -38 -60 -84 -90 -66 -32 -4 -2 -4 8 12 12 10 6 6 6 4 0 0 0 0 0 -2 -4 0 0 0 -2 -2 0 0 -2 -2 -2 -2 0 -4 -2 0 -4 -6 -4 -2 -4 -6 -6 -4 -4 -6 -6 -2 6 12 8 0 -16 -38 -60 -84 -90 -66 -32 -4 -2 -4 8 12 12 10 6 6 6 4 0 0 0 0 0 -2 -4 0 0 0 -2 -2 0 0 -2 -2 -2 -2 0 -4 -2 0 -4 -6 -4 -2 -4 -6 -6 -4 -4 -6 -6 -2 6 12 8 0 -16 -38 -60 -84 -90 -66 -32 -4 -2 -4 8 12 12 10 6 6 6 4 0 0 0 0 0 -2 -4 0 0 0 -2 -2 0 0 -2 -2 -2 -2 0 -4 -2 0 -4 -6 -4 -2 -4 -6 -6 -4 -4 -6 -6 -2 6 12 8 0 -16 -38 -60 -84 -90 -66 -32 -4 -2 -4 8 12 12 10 6 6 6 4 0 0 0 0 0 -2 -4 0 0 0 -2 -2 0 0 -2 -2 -2 -2 0];
z=low(x);
h=high(z);
g=WF(h);l=g.*g;
k=JF(l);b=l>=30000;
subplot(321);plot(x);
subplot(322);plot(z);
subplot(323);plot(h);
subplot(324);plot(g);
subplot(325);plot(k);
subplot(326);plot(b);
function x4=JF(x)
     r=length(x);
     s=zeros(1,r);
     e=30;
     for i=1:r
         for j=1:e-1
             if i-j>0
               s(i)=s(i)+x(i-j);
             end
         end
     end
     x4=s./e;
end
function x3=WF(x)
     a=length(x);
     f=zeros(1,a);
     for i=1:a
         if i<=4
             if i<=3
                 if i<2
                     f(i)=2*x(i)/8;
                 else
                     f(i)=(2*x(i)+x(i-1))/8;
                 end
             else
                 f(i)=(2*x(i)+x(i-1)-x(i-3))/8;
             end
         else
             f(i)=(2*x(i)+x(i-1)-x(i-3)-2*x(i-4))/8;
         end
     end
     x3=f;
end
function x2=high(x)
    n=length(x);
    t=zeros(1,n);
    for i=1:n
        if i<=32
            if i<=16
                if i==1
                    t(i)=-x(i)/32;
                else
                    t(i)=-(t(i-1)+x(i))/32;
                end
            else
                t(i)=x(i-16)-(t(i-1)+x(i))/32;
            end
        else
             t(i)=x(i-16)-(t(i-1)+x(i)-x(i-32))/32;
        end
    end
    x2=t;
end
function x1=low(x)
    m=length(x);
    y=zeros(1,m);
    for i=1:m
        if i<=12
            if i<=6
                if i<3
                    if i==1
                        y(i)=x(i);
                    else
                        y(i)=2*y(i-1)+x(i);
                    end
                else
                    y(i)=2*y(i-1)-y(i-2)+x(i);
                end
            else
                y(i)=2*y(i-1)-y(i-2)+x(i)-2*x(i-6);
            end
        else
            y(i)=2*y(i-1)-y(i-2)+x(i)-2*x(i-6)+x(i-12);
        end
    end
    x1=y;
end