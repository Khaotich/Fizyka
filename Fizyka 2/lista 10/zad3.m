%Skrypt rysuj¹cy rozk³ad i natê¿enie pola elektrycznego 4 ³adunków znajduj¹cych siê w rogach kwadratu
clear all;clf;clc;

%dane
k = 9*10^9;

q1 = 2;
q2 = -2;
q3 = 2;
q4 = -2;

x1 = -2; y1 = 2;
x2 = 2; y2 = 2;
x3 = 2; y3 = -2;
x4 = -2; y4 = -2;

z = -4:0.1:4;
[x, y] = meshgrid(z);

%obliczenia
r1 = sqrt((x1-x).^2 + (y1-y).^2);
r2 = sqrt((x2-x).^2 + (y2-y).^2);
r3 = sqrt((x3-x).^2 + (y3-y).^2);
r4 = sqrt((x4-x).^2 + (y4-y).^2);

v1 = (q1.*k)./r1;
v2 = (q2.*k)./r2;
v3 = (q3.*k)./r3;
v4 = (q4.*k)./r4;

V = v1 + v2 + v3 + v4;

%Wykresy
%Potencja³ V i natê¿enia pola E
figure(1) 
[px, py] = gradient(-V, 0.1, 0.1);
contour(z, z, V, 20); 
hold on;
quiver(z, z, px, py, 0.000000000001);
hold off;
colorbar;
title('Linie sta³ego potencja³u V i wektory natê¿enia pola');

%Wykres 3D potencja³u
figure(2) 
surf(x, y, V);
axis off;
view(- 37.5, 20);
colorbar;
title('Wykres 3-D potencja³u V');