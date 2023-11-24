clear
syms x y z
axis equal; 
fz (x,y) = sin(x) + (cos(y)/x);

fsurf(fz, [0.1 5 -6 6])
hold on;
%függvény neve majd utána az intervallum, amit megadtak a feladatban
fx(x,y)=0*x+0*y;
%itt megadjuk annak a függvény nevét,a mit tulajdonképpen maga az x és y
%sík
fsurf(fx,[0.1 5 -6 6],'.b')
%a piros szín az ahol metszi
hold on;
xlabel('x');ylabel('y');zlabel('z')