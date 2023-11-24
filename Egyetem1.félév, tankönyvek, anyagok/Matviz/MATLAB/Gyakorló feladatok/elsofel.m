clear

syms u v
x(u,v)=u-((u^3)/3)+u*(v^2);
y(u,v)=v-((v^3)/3)+v*(u^2);
z(u,v)=u^2-(v^2);

fsurf(x,y,z,[-25 25 -25 25])
hold on 
axis equal
u0=10; v0=15;

px=x(u0,v0);
py=y(u0,v0);
pz=z(u0,v0);

P=[px,py,pz];

%EZ VOLT A FELÜLET


xc(u)=x(u,v0);
yc(u)=y(u,v0);
zc(u)=z(u,v0);

xf(v)=x(u0,v);
yf(v)=y(u0,v);
zf(v)=z(u0,v);

fplot3(xc,yc,zc,[-25 25],'r')
fplot3(xf,yf,zf,[-25 25],'m')

%EZ VOLT A PARAMÉTERVONAL

xcd(u)=diff(xc,u);
ycd(u)=diff(yc,u);
zcd(u)=diff(zc,u);

xfd(v)=diff(xf,v);
yfd(v)=diff(yf,v);
zfd(v)=diff(zf,v);

vu=[xcd(u0),ycd(u0),zcd(u0)];
vv=[xfd(v0),yfd(v0),zfd(v0)];

quiver3(px,py,pz,vu(1),vu(2),vu(3));
quiver3(px,pz,py,vv(1),vv(2),vv(3));

%EZ VOLT A PARAMÉTERVONAL ÉRINTŐVEKTORA

nv=cross(vu,vv);
quiver3(px,py,pz,nv(1),nv(2),nv(3),'b');

%MEGRAJZOLTUK A NORMÁLVEKTORÁT

ki =nv-P;
hossz=sqrt(ki(1)^2+ki(2)^2+ki(3)^2)

%KISZÁMOLTUK A NORMÁLVETKORÁT