%Karol Pichurski, lista 2 Matlab

clear all;

%dane 
I = 5;
ud = 12.57 * 10^-7; %przenikalnoœc pró¿ni
B = linspace(1, 6, 6);
r = (ud * I)./(2 * pi .* B);

%rysunek
plot3([0 0], [0 0], [-2 8]); %rysujê przewodnik
hold on;
title('Pole magnetyczne od nieskoñczonego przewodnika');
xlabel('X');
ylabel('Y');
zlabel('Z');

for i = linspace(0, 6, 3)
  for j = linspace(1, 5, 5)
    okrag(r(j), 0, 0, i);
  endfor
endfor
hold off;