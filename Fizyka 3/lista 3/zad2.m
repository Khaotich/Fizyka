%Karol Pichurski, Matlab lista 3
%Skrypt rysuj¹cy wykres zale¿noœci B(r) kabla koncentrycznego z³o¿onego z
%trzech, wspó³osiowych przewodników oddzielonych dielektrykami.

clear all;

%dane
N = 10;
u0 = 4 * pi * 10^-7; %przenikalnoœc magnetyczna pró¿ni
a = 0.001;
b = 0.002;
c = 0.0025;
d = 0.005;
e = 0.0055;

I1 = 2;
I2 = -1;
I3 = -1;

%obliczenia
J1 = I1/(pi*a^2);
J2 = I2/(pi*(c^2-b^2));
J3 = I3/(pi*(e^2-d^2));

r1 = linspace(0, a, N);
r2 = linspace(a, b, N);
r3 = linspace(b, c, N);
r4 = linspace(c, d, N);
r5 = linspace(d, e, N);
r6 = linspace(e, 0.01, N);

B1 = (u0*J1*pi.*r1.^2)./(2*pi.*r1);
B2 = (u0*I1)./(2*pi.*r2);
B3 = (u0*(I1+J2*pi*(r3.^2-b^2)))./(2*pi.*r3);
B4 = (u0*(I1+I2))./(2*pi.*r4);
B5 = (u0*(I1+I2+J3*pi*(r5.^2-d^2)))./(2*pi.*r5);
B6 = (u0*(I1+I2+I3))./(2*pi.*r6);

#wykres
plot(r1, B1);
hold on;
plot(r2, B2);
plot(r3, B3);
plot(r4, B4);
plot(r5, B5);
plot(r6, B6);
title('Wykres zale¿noœci B(r)');
xlabel('r [m]');
ylabel('|B| [mT]');
hold off;
