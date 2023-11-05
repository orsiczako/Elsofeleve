clear
syms x y
A=[2 3]; r =4;
F(x,y)=(x-A(1))^2+(y-A(2))^2-r^2
%kör egyenlete
fimplicit(F,[-10 10 -10 10])

F(-2,3)
grid on
xlabel('x'),ylabel('y')
axis equal



clear
syms t 
x(t) = t*cos(t);
y(t)=t*sin(t);
fplot(x(t),y(t),[0 20*pi])
axis equal

t0 = 40
xlabel('x'),ylabel('y')
grid on
P=[x(t0),y(t0)];
hold on
plot(P(1),P(2),"k*")
