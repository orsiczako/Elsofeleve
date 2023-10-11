clear
px = [-2 3 5 8];
%Ha pontos vesszőt teszünk mögé, nem jelenik meg a command windowban
py = [1  7 2 -2];
plot(px,py, '.r--','MarkerSize',12)
%Ha: plot(px,py,'*'), akkor csillaggal írja ki, ha nem akkor összeköti
%Csillaggal jelöli a pontokat
%Ha .r--, akkor szaggatott vonallal köti össze
%A Markersizzal megadjuk mekkora legyen, és utána meg magát az értéket
axis([-5 10 -6 8])
axis equal
grid on
%bekapcsolja a rácsozást
ax =gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
%Az origót beállítottuk
box off
%ez levette a külső keretet


clear
syms x
f(x)=sin(x);
fplot(f,[-4*pi 3*pi])
%az f után lévő rész leszűkítette
axis([-20,20 -2 2])
%először megírtuk a függvény képletét és az fplottal meg megrajzoltuk
axis equal
%ezzel szebb lesz
elsogyaktengelyek;
%írtunk egy scriptet, azt elneveztük és meghívtuk, kvázi mint egy függvényt
%figure
%hold on
g(x)=cos(x);
fplot(g)
%az előző rajzolást mindig eltörli
%megoldás: két ablakba kérem, kiadjuk a figure parancsot
%ha meg akarjuk tartani egy lapon, akkor hold on
p =[5.3,g(5.3)]
%Ha normális alakban akarjuk megkapni a p pont koordinátáit:
%p(1)
%p(2)
double (p(2))

clear
syms x y
A=[2 3]; r =4;
F(x,y)=(x-A(1))^2+(y-A(2))^2-r^2
%kör egyenlete
fimplicit(F,[0 10 -10 10])
%az F után az intervallumot adjuk meg, az első kettő az x, a többi y
axis equal

F(4,3)
%behelyettesítettünk

clear
syms t 
x(t) = t*cos(t);
y(t)=t*sin(t);
fplot(x(t),y(t),[0 20*pi])
axis equal
t0 = 40
%felvettünk egy pontot

P=[x(t0),y(t0)];
hold on
plot(P(1),P(2),"k*")

%Érintő vektor: kell hozzá a koordináta függvény deriváltja 
xd(t)=diff(x(t),t);
yd(t)=diff(y(t),t);
v =[xd(t0),yd(t0)];
%Vektorterek ábrázolására külön kell rajzoló baszás, és most is 
quiver(P(1),P(2),v(1),v(2),'r');
%meg kell adni a kezdőpontot majd a vektor koordinátátit

