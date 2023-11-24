cla()
clear

syms a0 a1 a2 a3 a4 b0 b1 b2 b3 b4 t

x(t)=a4*t^4+a3*t^3+a2*t^2+a1*t+a0;
y(t)=b4*t^4+b3*t^3+b2*t^2+b1*t+b0;

t1=0; t2=1; t3=2; t4=3; t5=4;

px=[10 20 40 50 20];
py=[20 40 40 20 10];

ex=[x(t1)==px(1),x(t2)==px(2),x(t3)==px(3),x(t4)==px(4),x(t5)==px(5)];

ey=[y(t1)==py(1),y(t2)==py(2),y(t3)==py(3),y(t4)==py(4),y(t5)==py(5)];

sx=solve(ex,[a0 a1 a2 a3 a4]);
sy=solve(ey,[b0 b1 b2 b3 b4]);

cx(t)=subs(x,[a0 a1 a2 a3 a4],[sx.a0 sx.a1 sx.a2 sx.a3 sx.a4]);
cy(t)=subs(y,[b0 b1 b2 b3 b4],[sy.b0 sy.b1 sy.b2 sy.b3 sy.b4]);

fplot(cx,cy,[t1 t5])
hold on
axis equal
plot(px,py,'*')

%Érintővektor:
cxd(t)=diff(cx,t);
cyd(t)=diff(cy,t);
tt=0.5;
v=[cxd(tt),cyd(tt)];
p=[cx(tt),cy(tt)];

quiver(p(1),p(2),v(1),v(2))

%hetedik
cla();
clear

syms a0 a1 a2 a3  b0 b1 b2 b3  t

x(t)=a3*t^3+a2*t^2+a1*t+a0;
y(t)=b3*t^3+b2*t^2+b1*t+b0;

px=[-2 4 6 10];
py=[-2 0 -2 2];

t1=-1; t2=0; t3=2; t4=3;

ex=[x(t1)==px(1),x(t2)==px(2),x(t3)==px(3),x(t4)==px(4)];
ey=[y(t1)==py(1),y(t2)==py(2),y(t3)==py(3),y(t4)==py(4)];

sx=solve(ex,[a0 a1 a2 a3]);
sy=solve(ey,[b0 b1 b2 b3]);

cx(t)=subs(x,[a0 a1 a2 a3 ],[sx.a0 sx.a1 sx.a2 sx.a3]);
cy(t)=subs(y,[b0 b1 b2 b3 ],[sy.b0 sy.b1 sy.b2 sy.b3]);

fplot(cx,cy,[t1 t4]);
hold on 

%Érintő:

cxd(t)=diff(cx,t);
cyd(t)=diff(cy,t);

v=[cxd(t3),cyd(t3)];
p=[cx(t3),cy(t3)];

quiver(p(1),p(2),v(1),v(2))

%kilencedik

cla();
clear
hold on
axis equal

syms a0 a1 a2 a3  b0 b1 b2 b3  t

x(t)=a3*t^3+a2*t^2+a1*t+a0;
y(t)=b3*t^3+b2*t^2+b1*t+b0;

px=[-2 6];
py=[-2 -2];
vx=[6 4];
vy=[-4 4];

t1=0; t2=1;

xd(t)=diff(x,t);
yd(t)=diff(y,t);

ex=[x(t1)==px(1),x(t2)==px(2),xd(t1)==vx(1),xd(t2)==vx(2)];
ey=[y(t1)==py(1),y(t2)==py(2),yd(t1)==vy(1),yd(t2)==vy(2)];

sx=solve(ex,[a0 a1 a2 a3]);
sy=solve(ey,[b0 b1 b2 b3]);

cx(t)=subs(x,[a0 a1 a2 a3 ],[sx.a0 sx.a1 sx.a2 sx.a3]);
cy(t)=subs(y,[b0 b1 b2 b3 ],[sy.b0 sy.b1 sy.b2 sy.b3]);

fplot(cx,cy,[t1 t2]);

quiver(px(1),py(1),vx(1),vy(1))
quiver(px(2),py(2),vx(2),vy(2))

%tizedik

%Csatlakoztatás:

px1=[px(2) 14];
py1=[py(2) 4];

vx1=[vx(2) 3];
vy1=[vy(2) 0];

t1=0; t2=2;

ex1=[x(t1)==px1(1),x(t2)==px1(2),xd(t1)==vx1(1),xd(t2)==vx1(2)];
ey1=[y(t1)==py1(1),y(t2)==py1(2),yd(t1)==vy1(1),yd(t2)==vy1(2)];

sx1=solve(ex1,[a0 a1 a2 a3]);
sy1=solve(ey1,[b0 b1 b2 b3]);

cx1(t)=subs(x,[a0 a1 a2 a3 ],[sx1.a0 sx1.a1 sx1.a2 sx1.a3]);
cy1(t)=subs(y,[b0 b1 b2 b3 ],[sy1.b0 sy1.b1 sy1.b2 sy1.b3]);

fplot(cx1,cy1,[t1 t2])

%11-ik:
cla()
clear

syms a0 a1 a2 a3  b0 b1 b2 b3  t

x(t)=a3*t^3+a2*t^2+a1*t+a0;
y(t)=b3*t^3+b2*t^2+b1*t+b0;

px=[-2 4 6 10];
py=[-2 0 -2 2];

t1=-1; t2=0; t3=2; t4=3;

ex=[x(t1)==px(1),x(t2)==px(2),x(t3)==px(3),x(t4)==px(4)];
ey=[y(t1)==py(1),y(t2)==py(2),y(t3)==py(3),y(t4)==py(4)];

sx=solve(ex,[a0 a1 a2 a3]);
sy=solve(ey,[b0 b1 b2 b3]);

cx(t)=subs(x,[a0 a1 a2 a3 ],[sx.a0 sx.a1 sx.a2 sx.a3]);
cy(t)=subs(y,[b0 b1 b2 b3 ],[sy.b0 sy.b1 sy.b2 sy.b3]);

fplot(cx,cy,[t1 t4]);
hold on 

%Érintő:

cxd(t)=diff(cx,t);
cyd(t)=diff(cy,t);

v=[cxd(t3),cyd(t3)];
p=[cx(t3),cy(t3)];

quiver(p(1),p(2),v(1),v(2))

%csatlakozás:

px1=[px(4) 14];
py1=[py(4) -4];

vx1=[cxd(t4) 3];
vy1=[cyd(t4) 0];
tt1=t1; tt2=1;

xd(t)=diff(x,t);
yd(t)=diff(y,t);

ex1=[x(tt1)==px1(1),x(tt2)==px1(2),xd(tt1)==vx1(1),xd(tt2)==vx1(2)];
ey1=[y(tt1)==py1(1),y(tt2)==py1(2),yd(tt1)==vy1(1),yd(tt2)==vy1(2)];

sx1=solve(ex1,[a0 a1 a2 a3]);
sy1=solve(ey1,[b0 b1 b2 b3]);

cx1(t)=subs(x,[a0 a1 a2 a3 ],[sx1.a0 sx1.a1 sx1.a2 sx1.a3]);
cy1(t)=subs(y,[b0 b1 b2 b3 ],[sy1.b0 sy1.b1 sy1.b2 sy1.b3]);

fplot(cx1,cy1,[tt1 tt2])

%13-ik:

clear
px=[10 20 40 50 20];
py=[20 40 40 20 10];

n=4;

syms t

plot(px,py, "m")
hold on
axis equal

cx(t)=0*t;
cy(t)=0*t;
b(t)=0*t;

 for i =0:n
     b(t)=nchoosek(n,i)*t^i*(1-t)^(n-i);
     cx(t)=cx(t)+b(t)*px(i+1);
     cy(t)=cy(t)+b(t)*py(i+1);
 end

 fplot(cx, cy, [0 1])


 kv=[ n*(px(2)-px(1)),n*(py(2)-py(1))];
 vv=[ n*(px(5)-px(4)),n*(py(5)-py(4))];

 quiver(px(1),py(1),kv(1),kv(2))
 quiver(px(n+1),py(n+1),vv(1),vv(2))

 %CSATLAKOZTATÁS:

 syms t 
 ex=[vv(1)+px(1),vv(2)+px(2)];

 px















