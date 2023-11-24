clear
syms x y
fz(x, y) = sqrt(1-x^2-(0.5*(y^2)));
fsurf(fz)
%fsurf:felület
hold on; axis equal;
x0=0.5; y0=0.2;
plot3(x0,y0,fz(x0,y0), 'r*', 'MarkerSize', 20)