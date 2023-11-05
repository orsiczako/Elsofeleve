clear
syms t
x(t)=cos(t)*t;
y(t)=sin(t)*t;
%ha megszorozzuk a paraméterrel, akkor spirált kapunk a kör helyett, ha a
%t-t kitörölném akkor csak egy sima kört kapnék FELÜLNÉZETBŐL
z(t)=t;
fplot3(x,y,z,[0 18*pi])
%[] között az intervallumot adtuk meg
%3 dimenzióban fplot3mal rajzoltatjuk ki
axis equal
%felülnézetben ez egy kör
xlabel('x'); ylabel('y');zlabel('z');
%ezzel kiírattuk, hogy melyik tengely melyik mert egyébként nem tudnánk
%eldönteni
%PONT MEGADÁSA SÍKBAN: KI KELL VÁLASZTANI EGY T ÉRTÉKET
t0=46;
P =[x(0),y(t0),z(t0)];
%ezzel amit az előbb írtam rátesszük a pontot de ki kell tenni a holdon
%parancsot ami megtartja a rajzlapot
hold on
plot3(P(1),P(2),P(3),'.r','MarkerSize',14)
xd(t)=diff(x,t);
yd(t)=diff(y,t);
%x(t)=cos(t)*t; ezt deriváltuk le, ezt még az elején hoztuk létre
zd(t)=diff(z,t);
v =[xd(t0);yd(t0);zd(t0)];
%most a vektort számoltuk ki
%a hold on addig működik míg nem mondok neki mást
%fel kell venni hogy melyik pontből melyik vektort akarom ábrázolni
quiver3(P(1),P(2),P(3),v(1),v(2),v(3),'b',...
    'LineWidth',3);
%ha újabb sorban akarom folytatni a parancsot, akkor 3 pontot kell tenni,
%különben két külön parancsnak érzékelné a két sort
%linewidth-el, megrajzoltatjuk a vektort


