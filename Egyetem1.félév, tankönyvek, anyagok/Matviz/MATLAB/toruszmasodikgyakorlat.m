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
