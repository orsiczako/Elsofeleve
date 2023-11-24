syms u v 
R=5;
r=2;
%ezt a képletet nem kell tudni fejből
x(u,v)=(R+r*cos(v))*cos(u);
y(u,v)=(R+r*cos(v))*sin(u);
z(u,v)=r*sin(v);

%ez itt a magasság
fsurf(x,y,z,[0 2*pi 0 2*pi])
%ha csak simán pi-t írnánk az egyiknél, akkor kettévágja, ha mindkettőnél
%csak pi-t akkor elnegyedeli a tóruszt
axis equal
%ha za u és a v helyére konkrét számot írunk akkor pontot kapunk
u0=3.7;
v0=0.7;
P=[x(u0,v0),y(u0,v0),z(u0,v0)];
hold on
plot3(P(1),P(2),P(3),'.r','MarkerSize',10)

%és így adunk meg egy pontot rajta

%paraméter vonal a felületen mindig egy térgörbe
%van 3 koordináta fg, ha az u a fix, akkor az u helyére beírjuk az u0, és
%már csak a v marad benne mint változó, x(u,v)==>(u0,v)==>x(v), már csak a
%v-től függ
%cx(v), máshogy kell elnevezni
%y(u,v)==>Y(u0,v)==>cy(v)
%z(u,v)==> cz(v)
%ez egy térgörbe
cx(v)=x(u0,v);
cy(v)=y(u0,v);
cz(v)=z(u0,v);
%fplot3 térben rajzol
fplot3(cx,cy,cz,[0 2*pi],'b','LineWidth',20)
%és így rajzolunk az alakzatra egy paraméter vonalat, tehát csak az egyik
%paramétervbe helyettesítünk be
%kiértékeljük az érintővektorát, le kell gyártani a derviált függvényeket,
%be kell helyettesíteni, valamilyen v értéket kell választani
%deriváltak:
cxd(v)=diff(cx,v);
cyd(v)=diff(cy,v);
czd(v)=diff(cz,v);

ce=[cxd(v0),cyd(v0),czd(v0)];

quiver3(P(1),P(2),P(3),ce(1),ce(2),ce(3),'r','LineWidth',4);

%még egy térgörbe, viszont itt az u-val:

dx(u)=x(u,v0);
dy(u)=y(u,v0);
dz(u)=z(u,v0);
fplot3(dx,dy,dz,[0 2*pi],'g','LineWidth',3);
%és most ez ementi érintővektor

dxd(u)=diff(dx,u);
dyd(u)=diff(dy,u);
dzd(u)=diff(dz,u);
de=[dxd(u0),dyd(u0),dzd(u0)];

quiver3(P(1),P(2),P(3),de(1),de(2),de(3),'m','LineWidth',3)

%Pontbeli normálvektor:
%megvan ez a két érintővektor, kell rájuk egy merőleges vektor és így
%kapjuk meg a pontbeli vektort, a normálvektor a felületre is merőleges ezt
%vektoriális szorzattal csináljuk meg, kifelé mutató normálvektort kell
%használni, és most ezt fogjuk megcsinálni, el kell dönteni hogy ce x de
%vagy de x ce, mert az egyik kifelé mutat a másik kifelé, a jobbkéz
%szabályt kell alkalmazni, a jobbsodrású rendzsert, rátesszük az ujjunkat,
%és amerre a középsű ujjunk mutat, annak kifelé kell mutatnia

%vektoriális szorzat:
n=cross(de,ce);

quiver3(P(1),P(2),P(3),n(1),n(2),n(3),'y','LineWidth',5)

%k=cross(ce,de);
%quiver3(P(1),P(2),P(3),k(1),k(2),k(3),'y','LineWidth',5)
%ez amit most itt kikommenteltem pont a rossz verzió, mert nem kifelé mutat
%hanem kvázi átmegy a vektor a tóruszon








