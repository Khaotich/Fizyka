%Karol Pichurski Matlab Lista 7 Zadanie 2
%Skrypt rysujący wykres położenia obrazu w funkcji położenia przedmiotu od
%cienkiej soczewki o ogniskowej -10.

clear all;

%dane
N = 1000;
f = -10;
x = linspace(-11, -9, N);

%obliczenia
y = (1/f - 1./x).^-1;

%wykres
plot(x, y); 
xlabel('Odległość przedmiotu');
ylabel('Odległość obrazu');
title('Wykres zależności odległości obrazu od odległości przedmiotu dla soczewki o ogniskowej -10');
xlim([-10.1 -9.9]);