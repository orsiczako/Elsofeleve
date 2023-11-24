clear
syms a0 a1 a2 a3 b0 b1 b2 b3 t

x(t)=a3*t^3+a2*t^2+a1*t+a0;
y(t)=b3*t^3+b2*t^2+b1*t+b0;

t1=0; t2=1; t3=1.5;

px=[-2 6 10];
py=[-2 -2 2];
plot(px,py,'*');
hold on
axis equal

v=[6 -4];
xd(t)=diff(x,t);
yd(t)=diff(y,t);

ex=[x(t1)==px(1),x(t2)==px(2),x(t3)==px(3),xd(t1)==v(1)];
ey=[y(t1)==py(1),y(t2)==py(2),y(t3)==py(3),yd(t1)==v(2)];

sx=solve(ex,[a0 a1 a2 a3]);
sy=solve(ey,[b0 b1 b2 b3]);

cx(t)=subs(x,[a0 a1 a2 a3],[sx.a0 sx.a1 sx.a2 sx.a3]);
cy(t)=subs(y,[b0 b1 b2 b3],[sy.b0 sy.b1 sy.b2 sy.b3]);

fplot(cx,cy,[t1 t3])

p=[cx(t1),cy(t1)];

quiver(p(1),p(2),v(1),v(2))

