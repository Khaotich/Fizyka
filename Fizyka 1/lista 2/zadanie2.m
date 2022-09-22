%Zadanie 2

x = linspace(0,2*pi,100);
y = sin(x);

xlabel("X");
ylabel("Y");
title("Wykres sporządzony przez Karol Pichurski");
hold on;

plot(x,y);
plot(x,y,"o");