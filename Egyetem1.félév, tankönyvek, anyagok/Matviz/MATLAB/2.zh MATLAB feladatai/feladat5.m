clear

px=[-3 3];
py=[1 3];
vx=[2 -2];
vy=[3 3];

syms a0 a1 a2 a3 b0 b1 b2 b3 t

x(t)=a3*t^3+a2*t^2+a1*t+a0;
y(t)=b3*t^3+b2*t^2+b1*t+b0;

t1=-1; t2=1;
tt=0.4;

xd(t)=diff(x,t);
yd(t)=diff(y,t);

ex=[x(t1)==px(1),x(t2)==px(2),xd(tt)==vx(1),xd(t2)==vx(2)];

ey=[y(t1)==py(1),y(t2)==py(2),yd(tt)==vy(1),yd(t2)==vy(2)];

sx=solve(ex,[a0 a1 a2 a3]);

sy=solve(ey,[b0 b1 b2 b3]);

cx(t)=subs(x,[a0 a1 a2 a3],[sx.a0 sx.a1 sx.a2 sx.a3]);
cy(t)=subs(y,[b0 b1 b2 b3],[sy.b0 sy.b1 sy.b2 sy.b3]);

hold on
plot(px,py,'*')
fplot(cx,cy,[t1 t2]);

%Érintővektorok:
p1=[cx(tt),cy(tt)];
p2=[cx(t2),cy(t2)];
quiver(p1(1),p1(2),vx(1),vy(1))
quiver(p2(1),p2(2),vx(2),vy(2),'m')

%CSATLAKOZTATÁS:

px1=[px(2) 10];
py1=[py(2) 6];
vx1=[vx(2) 3];
vy1=[vy(2) -6];

tt1=t1; tt2=2;

ex1=[x(tt1)==px1(1),x(tt2)==px1(2),xd(tt1)==vx1(1),xd(tt2)==vx1(2)];
ey1=[y(tt1)==py1(1),y(tt2)==py1(2),yd(tt1)==vy1(1),yd(tt2)==vy1(2)];

sx1=solve(ex1,[a0 a1 a2 a3]);
sy1=solve(ey1,[b0 b1 b2 b3]);

cx1(t)=subs(x,[a0 a1 a2 a3],[sx1.a0 sx1.a1 sx1.a2 sx1.a3]);
cy1(t)=subs(y,[b0 b1 b2 b3],[sy1.b0 sy1.b1 sy1.b2 sy1.b3]);

fplot(cx1,cy1,[tt1 tt2])
plot(px1,py1,'.r')

%Érintővektorai:

cxd(t)=diff(cx1,t);
cyd(t)=diff(cy1,t);

vk=[cxd(tt1),cyd(tt1)];
vv=[cxd(tt2),cyd(tt2)];

quiver(px1(1),py1(1),vk(1),vk(2))
quiver(px1(2),py1(2),vv(1),vv(2))