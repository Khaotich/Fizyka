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

#obliczenia

V1 = k*qp./sqrt((xg-xp).^2 + (yg -yp).^2); 

ex = zeros(length(xg),1);
ey = zeros(length(yg),1);

disp(V1(1)(1))

for i = 2:20
   
   for j = 2:20
     d = 2.* sqrt((xg(i)(j)-xp(i)(j))^2 + (yg(i)(j) -yp(i)(j))^2);
     ex(i)(j) = (V1(i+1)(j) - V(i-1)(j))/d;
     ey(i)(j) = (V1(i)(j+1) - V(i)(j-1))/d;
   end
  
end