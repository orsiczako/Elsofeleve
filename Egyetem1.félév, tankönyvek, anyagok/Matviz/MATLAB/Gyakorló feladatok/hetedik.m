clear 
syms a0 a1 a2 a3 b0 b1 b2 b3 t

x(t)=a3*t^3+a2*t^2+a1*t+a0;
y(t)=b3*t^3+b2*t^2+b1*t+b0;

t1=-1; t2=0; t3=2; t4=3;
px=[-2 4 6 10];
py=[-2 0 -2 2];
axis equal 
hold on
plot(px,py,'*r')

ex=[x(t1)==px(1),x(t2)==px(2),x(t3)==px(3),x(t4)==px(4)];
ey=[y(t1)==py(1),y(t2)==py(2),y(t3)==py(3),y(t4)==py(4)];

sx=solve(ex,[a0 a1 a2 a3]);
sy=solve(ey,[b0 b1 b2 b3]);

cx(t)=subs(x,[a0 a1 a2 a3],[sx.a0 sx.a1 sx.a2 sx.a3]);
cy(t)=subs(y,[b0 b1 b2 b3],[sy.b0 sy.b1 sy.b2 sy.b3]);

fplot(cx,cy,[t1 t4],'m')

%KELL EGY VEKTOR:
cxd(t)=diff(cx,t);
cyd(t)=diff(cy,t);
v=[cxd(t3),cyd(t3)];

%KELL EGY PONT:

p=[cx(t3),cy(t3)];

quiver(p(1),p(2),v(1),v(2))