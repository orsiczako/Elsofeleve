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

 px1=[px(n+1), -50, 20];
 py1=[py(n+1), 20 -10];

 syms a0 a1 a2 a3 b0 b1 b2 b3 t

 t1=0; t2=1; t3=2;

 x(t) = a3*t^3+a2*t^2+a1*t+a0;
 y(t) = b3*t^3+b2*t^2+b1*t+b0;
 xd(t) = diff(x, t);
 yd(t) = diff(y, t);

 v=vv;

ex = [x(t1) == px1(1), x(t2) == px1(2), x(t3) == px1(3), xd(1) == v(1)];
ey = [y(t1) == py1(1), y(t2) == py1(2), y(t3) == py1(3), yd(1) == v(2)];

sx = solve(ex, [a0 a1 a2 a3]);
sy = solve(ey, [b0 b1 b2 b3]);

cxs(t) = subs(x, [a0 a1 a2 a3], [sx.a0 sx.a1 sx.a2 sx.a3]);
cys(t) = subs(y, [b0 b1 b2 b3], [sy.b0 sy.b1 sy.b2 sy.b3]);
fplot(cxs, cys, [t1 t3])
