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
n=5;

syms t

ex1=[(vv(1))+px(1),vv(2)+py(1)];

px1 = [20 ex1(1) -10 30 50 20];
py1 = [10 ex1(2) 50 -1 0 30];

cx(t)=0*t;
cy(t)=0*t;
b(t)=0*t;

for i=0:n
    b(t)=nchoosek(n,i)*t^i*(1-t)^(n-i);
    cx(t)=cx(t)+b(t)*px1(i+1);
    cy(t)=cy(t)+b(t)*py1(i+1);

end

fplot(cx,cy,[0 1])