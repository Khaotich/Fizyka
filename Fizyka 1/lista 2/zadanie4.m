% Zadanie 4

x = linspace(0,pi);
y = cos(x);
z = 1-x.^2/2+x.^4/24;

xlabel("X");
ylabel("Y");
title("Wykres");
hold on;

plot(x,y);
plot(x,z);

legend('cos(x)','1-x^2/2+x^4/24');