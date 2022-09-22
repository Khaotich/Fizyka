clear; close all; clc;

#skrypt rysuj¹cy natê¿enia pola elektrycznego

#dane
k = 9e9;
a = 0.5;
[xg, yg]= meshgrid(linspace(-5, 5, 20), linspace(-5, 5, 20));

#³adunek ujemny
qn = -10;
xn = -2;
yn = -2; 

#³adunek dodatni
qp = 10;
xp = 2;
yp = 2;

#### ³adunki jednoimienne

#obliczenia
rx = xg - xn;
ry = yg - yn;
r = sqrt(rx.^2 + ry.^2).^3;
ex = k .* qp .* rx ./ r;
ey = k .* qp .* ry ./ r;

rx = xg - xp;
ry = yg - yp;
r = sqrt(rx.^2 + ry.^2).^3;
ex = ex + k .* qp .* rx ./ r;
ey = ey + k .* qp .* ry ./ r;

e = sqrt(ex.^2 + ey.^2);

#ska³dowe wektora
u = ex./e;
v = ey./e;

#wykresy
subplot(1, 2, 1);
quiver(xg, yg, u, v, 0.3);

rectangle('Position',[xn-a/2, yn-a/2, a, a],'curvature',[1 1]);
text(xn-0.25, yn, '+', 'Color', 'black', 'FontSize', 60);

rectangle('Position',[xp-a/2, yp-a/2, a, a],'curvature',[1 1]);
text(xp-0.25, yp, '+', 'Color', 'black', 'FontSize', 60);

axis([-5 5 -5 5]);
axis equal;
title('³adunki jednoimienne');

####³adunki ró¿noimienne

#obliczenia
rx = xg - xn;
ry = yg - yn;
r = sqrt(rx.^2 + ry.^2).^3;
ex = k .* qn .* rx ./ r;
ey = k .* qn .* ry ./ r;

rx = xg - xp;
ry = yg - yp;
r = sqrt(rx.^2 + ry.^2).^3;
ex = ex + k .* qp .* rx ./ r;
ey = ey + k .* qp .* ry ./ r;

e = sqrt(ex.^2 + ey.^2);

#ska³dowe wektora
u = ex./e;
v = ey./e;

#wykresy
subplot(1, 2, 2);
quiver(xg, yg, u, v, 0.3);

rectangle('Position',[xn-a/2, yn-a/2, a, a],'curvature',[1 1]);
text(xn-0.25, yn-0.2, '-', 'Color', 'black', 'FontSize', 100);

rectangle('Position',[xp-a/2, yp-a/2, a, a],'curvature',[1 1]);
text(xp-0.25, yp, '+', 'Color', 'black', 'FontSize', 60);

axis([-5 5 -5 5]);
axis equal;
title('³adunki ró¿noimienne');