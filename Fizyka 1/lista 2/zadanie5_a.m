%Zadanie 5 A

% CIRCLE - skrypt rysujący okrąg
theta = linspace(0,2*pi,100);
x = cos(theta);
y = sin(theta);

hold on;

plot(x,y);
plot(0,0,"+")

axis("equal");
title("Okrąg o promieniu 1");