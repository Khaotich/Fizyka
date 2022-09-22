%Zadanie 5 B

% CIRCLE - skrypt rysujący okrąg
r = input("Podaj promień okręgu: ");
theta = linspace(0,2*pi,100);
x = r*sin(theta);
y = r*cos(theta);

hold on;

plot(x,y);
plot(0,0,"+")

axis("equal");
title("Okrąg o promieniu "+r);