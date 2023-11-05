%x (u,v)
%x(u,v)
%z(u,v)
%S(u0,v0)
%PARAMÉTERES FELÜLET
%x(u,v)=cos(u)
%y(u,v)=sin(u)
%u=[0,2*pi]
% a z a magasság
%z(u,v)=v
% a magasság értéket én választom ki, az u az egy hely
%MOST MEGRAJZOLJUK:
%NINCS LEFEDVE AZ ALAKZAT, EZ EGY HENGER
clear 
syms u v 
x(u,v)=cos(u);
y(u,v)=sin(u);
z(u,v)=v;
m =3;
%ez itt a magasság
fsurf(x,y,z,[0 2*pi 0 m])
axis equal
%RAJZOLJUNK MEG EZEN EGY PONTOT:
u0=pi/2; v0=2;
P=[x(u0,v0),y(u0,v0),z(u0,v0)];
hold on
plot3(P(1),P(2),P(3),'r.','MarkerSize',15)