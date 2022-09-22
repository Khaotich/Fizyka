%zadanie 6

hold on;
xlabel("X");
ylabel("Y");
title("Okrêgi");

r = 2;
theta = [0; pi/4; pi/2; pi*3/4; pi; pi*5/4];
x = r*cos(theta);
y = r*sin(theta);

r==sqrt(x.^2+y.^2);
theta = linspace(0,2*pi);

r = [2,3,6];

for i=1:3

x = r(i)*cos(theta);
y = r(i)*sin(theta);
plot(x,y);

endfor
