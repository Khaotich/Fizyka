%Karol Pichurski, Matlab lista 3

%skrypt rysuj¹cy wykres zale¿noœci B(r) wewn¹trz i na zewn¹trz nieœkoñczonego
%cylindrycznego przewodnika o promieniu 5mm z sta³ym pr¹dem o natê¿eniu I = 1a

clear all;

%dane
I = 1; %natê¿enie
a = 0.005; %promieñ
u0 = 4 * pi * 10^-7; %przenikalnoœc magnetyczna pró¿ni
r = 0.1; %przyjêty kraniec pola

d1 = linspace(0, a, 100); %zakres dla r<a
d2 = linspace(a, r, 100); %zakres dla r>=a

%obliczenia
B1 = (u0*I.*d1)/(2*pi*a^2); %indukcja dla 1 zakresu
B2 = (u0*I)./(2*pi.*d2); %indukcja dla 2 zakresu

%wykresy
plot(d1, B1);
hold on;
plot(d2, B2);
title('Wykres zale¿noœci B(r)');
xlabel('r');
ylabel('B');
hold off;