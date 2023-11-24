clear

syms x y z

zz(x,y)=sin(x)+(cos(y)/x);
fsurf(zz,[0.1 5 -6 6]);

f(x,y,z)=sin(x)+(cos(y)/x)-z;
hold on

fz(x,y)=f(x,y,0);

fimplicit(fz,[0.1 5 -6 6],'r');