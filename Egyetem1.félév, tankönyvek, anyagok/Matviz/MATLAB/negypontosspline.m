%v=w ez a cél
clear
px=[2 6 8 13];
py=[1 3 3 -1];
plot(px,py,'*--')
axis equal; hold on;
%meg kell adni a fokszámot:
n = 3;
syms t
%alapvetően cx(t)=0 lenne de oda kell írni egy szimbólumot pluszba hogy a
%matlab elfogadja
cx(t)=0*t;
cy(t)=0*t;

for i = 0:n
   b(t)=nchoosek(n,i)*t^i*(1-t)^(n-i)
   cx(t)=cx(t)+px(i+1)*b(t)
   cy(t)=cy(t)+py(i+1)*b(t)


end

%érintő vektor ha az elején van az érintő vektor tehát az első pontból
%indul

fplot(cx,cy,[0 1])

v=[n*(px(2)-px(1)),n*(py(2)-py(1))];

quiver(px(1),py(1),v(2),v(2))


%utolsó pontban érintővektor:
w=[n*(px(4)-px(3)),n*(py(4)-py(3))];


quiver(px(4),py(4),w(1),w(2))
for i = 0:m
   b(t)=nchoosek(m,i)*t^i*(1-t)^(m-i)
   dx(t)=dx(t)+rx(i+1)*b(t)
   dy(t)=dy(t)+ry(i+1)*b(t)


end
m=5;
rx=[px(4),px(4)+w(1)/m,23 ,30,27,22];
ry=[py(4),py(4)+w(2)/m,-4 ,0,5,2];

plot(rx,ry,'*--')


n=5;
rx=[px(4),px(4)+w/n,23 ,30,27,22];
ry=[py(4),py(4)+w/n,-4 ,0,5,2];

plot(rx,ry,'*--')


