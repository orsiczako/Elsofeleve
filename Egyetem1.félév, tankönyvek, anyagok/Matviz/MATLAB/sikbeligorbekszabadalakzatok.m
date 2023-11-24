%interpoláró polinomiális görbe:
%adott 4 pont, adottak paraméterértékek
%kell két koordináta fg: cx(t),cy(t)
%fel kell írni az elvárásokat matematikai formulával
% c(t1)=P1
%ha behelyettesítek az egyenletbe t1-gyel a t helyére, akkor megkapom a
%P1x-et
%majd utána ha P2-nél t helyére t2-t írok, és így mindig helyttesitgetek
%befele, konkrát számértékeket fogunk kapni, amint megvan a megoldás
%behelyettesítünk, utána már csak a t lesz a paraméter és készen vagyunk,
%majd ugyanezt elvégezzük az y koordinátafg-nyel is

%először felvesszük az inputot
clear
px=[-2 1 4 7 ];

py=[-1 3 5 2];

%felvettük a pontok koordinátáit
%rajzoljuk meg őket, hogy megnézzük, hol vannak meg minden
axis equal
axis ([-4 10 -3 6]);
plot(px,py,'*')

%most válasszünk t értéketet is hozzá
t1=1;
t2=2.5;
t3=3.5;
t4=5;

%most elkezdjük felvenni a cx koordináta függvényt, mivel az
%egyenletrendszerhez kellenek imseretlenek így jön a syms

%syms a3 a2 a1 a0 b3 b2 b1 b0 t

%ezekből fog kvázi állni az egyenletem
%itt jön az egyenlet:

%e=[a3*t1^3+a2*t1^2+a1*t1+a0==px(1),...
    %a3*t2^3+a2*t2^2+a1*t2+a0==px(2)...
    %a3*t3^3+a2*t3^2+a1*t3+a0==px(3)...
    %a3*t4^3+a2*t4^2+a1*t4+a0==px(4)];

%ebben most csak az a-k ismeretlenek most meg kell oldani ezt az
%egyenletrendszert

%m=solve(e,[a3 a2 a1 a0])

%azért az a-kat írtam bele mert azokra kell megoldani, mivel azok
%ismeretlenek

%m.a3
%ha ezt kiíratom, akkor csak ezt az egyet írja ki, és így tudok egy darab
%értékre hivtakozni a megoldott egyenletrednszer értékei közül
%és most az a-kat helyettesítsük be 

%cx(t)=m.a3*t^3+m.a2*t^2+m.a1*t+m.a0

%EZT EGYSZERŰBBEN IS LEHET ÉS MOST JÖN, HOGY HOGY:
%subs-al a gép helyettünk behelyettesíti az összes argumentumot, mert az
%előbb mi manuálisn egyenként helyettesítettünk

syms a3 a2 a1 a0 b3 b2 b1 b0 t

x(t)=a3*t^3+a2*t^2+a1*t+a0;
e=[x(t1)==px(1),x(t2)==px(2),...
    x(t3)==px(3),x(t4)==px(4)]


m=solve(e,[a3 a2 a1 a0]);

cx(t)=subs(x,[a3 a2 a1 a0],[m.a3 m.a2 m.a1 m.a0])

%ezt y-ra is megcsináljuk
y(t)=b3*t^3+b2*t^2+b1*t+b0;
e=[y(t1)==py(1),y(t2)==py(2),...
    y(t3)==py(3),y(t4)==py(4)]

m=solve(e,[b3 b2 b1 b0]);

cy(t)=subs(y,[b3 b2 b1 b0],[m.b3 m.b2 m.b1 m.b0])

hold on 
fplot(cx, cy ,[t1 t4])





