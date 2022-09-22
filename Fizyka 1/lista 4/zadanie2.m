
a = 2;
kat_a = pi/4;
b = 4;
kat_b = 127*pi/180;

x_a = a*cos(kat_a);
y_a = a*sin(kat_a);
x_b = b*cos(kat_b);
y_b = b*sin(kat_b);

subplot(1,2,1);

quiver(0,0,x_a,y_a,1);
text(0.6,0.5,'Wektor a')
hold on;
quiver(0,0,x_b,y_b,1);
text(-1.5,1.5,'Suma')
quiver(x_a,y_a,x_b - x_a,y_b - y_a,1);
text(0,2.5,'Wektor b');

subplot(1,2,2);
quiver(0,0,0,y_a,1);
hold on;
quiver(0,0,x_a,0,1);
quiver(0,0,0,y_b,1);
quiver(0,0,x_b,0,1);
quiver(0,0,x_a+x_b,y_a+y_b,1)