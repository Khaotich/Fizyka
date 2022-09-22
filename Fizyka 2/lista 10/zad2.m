%Skrypt rysuj¹cy wekres potencja³u elektrostatycznego i lini ekwipotencjalnych 
%uk³adu trzech ³adunków

clear all;
close all;

%dane
k = 9*10^9;
q1 = -6;
q2 = 12;
q3 = 18;

%obliczenia
x1 = 0; y1 = 0.5;
x2 = -0.5; y2 = 0;
x3 = 0.5; y3 = 0;

[x,y]=meshgrid(-2:0.1:2, -2:0.1:2);

r1 = sqrt((x1-x).^2 + (y1-y).^2);
r2 = sqrt((x2-x).^2 + (y2-y).^2);
r3 = sqrt((x3-x).^2 + (y3-y).^2);

V1 = (q1.*k)./r1;
V2 = (q2.*k)./r2;
V3 = (q3.*k)./r3;

V = V1 + V2 + V3;

%wykresy
figure (1);
pcolor(x,y,V);

xlabel('x (m)');
ylabel('y (m)');
title('Potencja³ elektrostatyczny uk³adu trzech ³adunków');
shading interp;
colorbar;

figure(2);
contour(x,y,V,'linewidth',3);
xlabel('x (m)');
ylabel('y (m)');
title('Linie ekwipotencjalne uk³adu trzech ³adunków');
