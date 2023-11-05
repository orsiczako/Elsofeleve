%implicit FELÜLET
clear
%keressük azokat a pontokat a térben, amiket ha beillesztünk, akkor kijön
%az egyenlőség
syms x y z 
%F(x,y,z) = x^2+y^2+z^2-1;
F(x,y,z)=1/x^2-1/y^2+1/z^2;
fimplicit3(F)
%ez 'y' az y a yellow-nak felel meg eddig 'r'-et használtunk színezésként, ami
%pirosra színezett
%ezzel a paranccsal ábrázoltuk
axis equal
%zh-n használható a dokumentáció
xlabel('x');ylabel('y');zlabel('z')
%erről az alakzatről mondunk egy pontot
F(1,1,1)
%a commandot kell figyelni, mivel egyet adott így nincs rajta az alakzaton
%a F(1,1,1)
%LEKORLÁTOZÁS:
fimplicit3(F,[0 10 -5 5 -5 5]);
%most lekorlátoztam, hogy mettől meddig menjen, ha ezt az egyenletet
%kikommenteled láthatod az eredeti egyenletet
%ha csak annyit írtam volna, hogy fimplicit3(F,[0,10]); az egyenlő azzal,
%hogy fimplicit3(F,[0 10 0 10 0 10]); tehát mindhárom koordinátának meg
%kell adni külön, hogy medig menjen





