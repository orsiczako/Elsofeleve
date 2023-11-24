%12

clear

px=[10 20 40 50 20];
py=[20 40 40 20 10];

syms t

cx(t)=0*t;
cy(t)=0*t;
b(t)=0*t;

n=4;

for i=0:n
    b(t)=nchoosek(n,i)*t^i*(1-t)^(n-i);
    cx(t)=cx(t)+b(t)*px(i+1);
    cy(t)=cy(t)+b(t)*py(i+1);
end

%VEKTORAI:

vk=[n*(px(2)-px(1)),n*(py(2)-py(1))];

vv=[n*(px(5)-px(4)),n*(py(5)-py(4))];

fplot(cx,cy,[0 1]);
hold on
axis equal

quiver(px(1),py(1),vk(1),vk(2))
quiver(px(n+1),py(n+1),vv(1),vv(2))
plot(px,py,'--')

%13:
%CSATLAKOZTATÁS:

syms a0 a1 a2 a3 b0 b1 b2 b3 t

x(t)=a3*t^3+a2*t^2+a1*t+a0;
y(t)=b3*t^3+b2*t^2+b1*t+b0;

t1=0; t2=1; t3=2;

px1=[px(5) 10 20];
py1=[py(5) 0 10];

v=vv;
xd(t)=diff(x,t);
yd(t)=diff(y,t);

ex1=[x(t1)==px1(1),x(t2)==px1(2),x(t3)==px1(3),xd(1)==v(1)];
ey1=[y(t1)==py1(1),y(t2)==py1(2),y(t3)==py1(3),yd(1)==v(2)];

sx=solve(ex1,[a0 a1 a2 a3]);
sy=solve(ey1,[b0 b1 b2 b3]);

cx(t)=subs(x,[a0 a1 a2 a3],[sx.a0 sx.a1 sx.a2 sx.a3]);
cy(t)=subs(y,[b0 b1 b2 b3],[sy.b0 sy.b1 sy.b2 sy.b3]);

fplot(cx,cy,[t1 t3])

%14:

cla()
clear
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

%CSATLAKOZÁS:
n=4;
syms t

ex1=[((cxd(t5))+px(1)),((cyd(t5))+py(1))];

px1=[10 ex1(1) -10 20 -10];
py1=[20 ex1(2) 10 -10 0];

cx(t)=0*t;
cy(t)=0*t;
b(t)=0*t;

for i=0:n
    b(t)=nchoosek(n,i)*t^i*(1-t)^(n-i);
    cx(t)=cx(t)+b(t)*px1(i+1);
    cy(t)=cy(t)+b(t)*py1(i+1);
end

fplot(cx,cy,[0 1],'m')

%15:
cla()
clear

px=[10 20 40 50 20];
py=[20 40 40 20 10];

syms t

cx(t)=0*t;
cy(t)=0*t;
b(t)=0*t;

n=4;

for i=0:n
    b(t)=nchoosek(n,i)*t^i*(1-t)^(n-i);
    cx(t)=cx(t)+b(t)*px(i+1);
    cy(t)=cy(t)+b(t)*py(i+1);
end

%VEKTORAI:

vk=[n*(px(2)-px(1)),n*(py(2)-py(1))];

vv=[n*(px(5)-px(4)),n*(py(5)-py(4))];

fplot(cx,cy,[0 1]);
hold on
axis equal

quiver(px(1),py(1),vk(1),vk(2))
quiver(px(n+1),py(n+1),vv(1),vv(2))
plot(px,py,'--')

%CSATLAKOZÁS:

ex1=[(vv(1)*3+px(1)),(vv(2)*3+py(1))];
n=5;

px1 = [20 ex1(1) -10 30 50 20];
py1 = [10 ex1(2) 50 -1 0 30];

syms t

cx(t)=0*t;
cy(t)=0*t;
b(t)=0*t;

for i=0:n
    b(t)=nchoosek(n,i)*t^i*(1-t)^(n-i);
    cx(t)=cx(t)+b(t)*px1(i+1);
    cy(t)=cy(t)+b(t)*py1(i+1);
end

fplot(cx,cy,[0 1])







































