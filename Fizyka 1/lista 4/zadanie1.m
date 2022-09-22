
wektor = 25;
kat = pi/6;

x = wektor*cos(kat);
y = wektor*sin(kat);

quiver(0,0,x,y);
hold on;

quiver(0,0,x,0);
text(10,-2.5,'Sk³adowa X');

quiver(x,0,0,y);
text(22,5,'Sk³adowa Y');