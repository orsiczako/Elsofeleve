clear

syms u v
x(u,v)=2*cos(u);
y(u,v)=3*cos(v);
z(u,v)=u+v;
axis equal
hold on

fsurf(x,y,z,[0 2*pi 0 15])

u0=pi/2;
v0=6;

P=[x(u0,v0),y(u0,v0),z(u0,v0)];

plot3(x(u0,v0),y(0,v0),z(u0,v0),'*m')
xlabel('x'),ylabel('y'),zlabel('z')

xc(u)=x(u,v0);
yc(u)=y(u,v0);
zc(u)=z(u,v0);

xcd(u)=diff(xc,u);
ycd(u)=diff(yc,u);
zcd(u)=diff(zc,u);

xf(v)=x(u0,v);
yf(v)=y(u0,v);
zf(v)=z(u0,v);

xfd(v)=diff(xf,v);
yfd(v)=diff(yf,v);
zfd(v)=diff(zf,v);

a=[xcd(u0),ycd(u0),zcd(u0)];
b=[xfd(v0),yfd(v0),zfd(v0)];

ki=cross(a,b);

nv=ki-P;

hossz=sqrt(nv(1)^2+nv(2)^2+nv(3)^2)
quiver3(P(1),P(2),P(3),nv(1),nv(2),nv(3))