%Karol Pichurski Lista 4 Matlab
%Skrypt rysuje rozk³ad pola magnetycznego (wektory ~B) wewn¹trz i na zewn¹trz
%cylindrycznego przewodnika ze sta³ym pr¹dem.

clear all;

%dane
I = 1;
a = 5;
R = 7;
u0 = 4 * pi * 10^-7;

%obliczenia
[r, phi] = meshgrid(0 : 0.2 : R, 0 : pi/50 : 2*pi);
[x, y, z] = cyl2Car(r, phi, 0);

t = linspace(0, 2*pi, 100); 
c_x = a.*cos(t); 
c_y = a.*sin(t);

Bx = zeros(size(phi));
By = zeros(size(phi));

[nr, nc] = size(phi);
const = (u0*I)/(2*pi);
for i = 1 : nr
  for j = 1 : nc
    if(phi(i, j) < R)
      Bx(i, j) = const * -y(i, j)/a^2;
      By(i, j) = const * x(i, j)/a^2;
    else
      Bx(i, j) = const * -y(i, j)/r^2;
      By(i, j) = const * x(i, j)/r^2;
    endif
  endfor
endfor

%rysunek
quiver(x, y, Bx, By);
hold on;
plot(c_x, c_y, 'color', 'r', 'linewidth', 2);
xlabel('x [mm]');
ylabel('y [mm]');
title('Pole magnetyczne cylindrycznego przewodnika(przekrój)');
hold off;