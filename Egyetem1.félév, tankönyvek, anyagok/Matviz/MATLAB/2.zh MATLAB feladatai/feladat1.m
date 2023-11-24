clear

syms t
px=[19 21 30 40 45 55];
py=[3 2 0 30 -10 0];
plot(px,py,'*')

n=5;

cx(t)=0*t;
cy(t)=0*t;
b(t)=0*t;

for i=0:n
    b(t)=nchoosek(n,i)*t^i*(1-t)^(n-i);
    cx(t)=cx(t)+b(t)*px(i+1);
    cy(t)=cy(t)+b(t)*py(i+1);

end

hold on
axis equal

plot(px,py,'--r')

fplot(cx,cy,[0 1])