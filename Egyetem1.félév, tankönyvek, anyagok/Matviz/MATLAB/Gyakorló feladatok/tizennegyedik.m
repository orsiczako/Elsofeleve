clear
syms a0 a1 a2 a3 a4 b0 b1 b2 b3 b4 t
px=[10 20 40 50 20];
py=[20 40 40 20 10];

x(t)=a4*t^4+a3*t^3+a2*t^2+a1*t+a0;
y(t)=b4*t^4+b3*t^3+b2*t^2+b1*t+b0;

t1=0; t2=1; t3=2; t4=3; t5=4;

ex=[x(t1)==px(1),x(t2)==px(2),x(t3)==px(3),x(t4)==px(4),x(t5)==px(5)];
ey=[y(t1)==py(1),y(t2)==py(2),y(t3)==py(3),y(t4)==py(4),y(t5)==py(5)];

sx=solve(ex,[a0 a1 a2 a3 a4]);
sy=solve(ey,[b0 b1 b2 b3 b4]);

cx(t)=subs(x,[a0 a1 a2 a3 a4],[sx.a0 sx.a1 sx.a2 sx.a3 sx.a4]);
cy(t)=subs(y,[b0 b1 b2 b3 b4],[sy.b0 sy.b1 sy.b2 sy.b3 sy.b4]);


fplot(cx,cy,[t1 t5],'m')
hold on
axis equal
plot(px,py,'*r')

cxd(t)=diff(cx,t);
cyd(t)=diff(cy,t);
t0=0.5;

vektor=[cxd(t0),cyd(t0)];
pont=[cx(t0),cy(t0)];

quiver(pont(1),pont(2),vektor(1),vektor(2))

%CSATLAKOZTATÁS:

n=4;
ex1=[((cxd(t5)/n)+px(1)),((cyd(t5)/n)+py(1))];


px1=[20 ex1(1) 60 80 0];
py1=[10 ex1(2) -5 60 20];

syms t
plot(px1,py1,'--')

cx(t)=0*t;
cy(t)=0*t;
b(t)=0*t;

for i=0:n
    b(t)=nchoosek(n,i)*t^i*(1-t)^(n-i);
    cx(t)=cx(t)+b(t)*px1(i+1);
    cy(t)=cy(t)+b(t)*py1(i+1);
end

fplot(cx,cy,[0 1])