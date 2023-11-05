clear
syms x y
f(x,y)=sin(x)+ cos(y);
fsurf(f)%ezzel rajzoltattuk ki
axis equal
xlabel('x');ylabel('y');zlabel('z');
%%P=(x0,y0,f(x0,y0)) pont felülete
x0 = 4; y0 =3;
hold on
plot3(x0,y0,f(x0,y0),'*r','MarkerSize',15);
%implicit: vegyesen lehet benne x meg y
%sin(x)+cos(y)=0 például ez is implicit
%ha ezt úgy rendezem, hogy a 0 az elején legyen akkor kapom:
%0=sin(x)+cos(y)
%ez azt mondja ki hogy ez egyenlő z-val, tehát a felületnek azon pontjai,
%ahol a z koordináta 0
%Most ezt gyakorlatban
fimplicit(f,'r','LineWidth',15);
%megadtuk azt a rész, ahol a z=0 
%a felületnek az x,y síkkal való metsezete
%amit kimetsz az az implicit alakzat
%ha felület akkor kisbetű, ha implicit alakzat akkor nagy betűvel


