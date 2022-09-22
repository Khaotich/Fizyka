%Karol Pichurski Matlab Lista 7 Zadanie 2
%Skrypt rysuj�cy wykres po�o�enia obrazu w funkcji po�o�enia przedmiotu od
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
xlabel('Odleg�o�� przedmiotu');
ylabel('Odleg�o�� obrazu');
title('Wykres zale�no�ci odleg�o�ci obrazu od odleg�o�ci przedmiotu dla soczewki o ogniskowej -10');
xlim([-10.1 -9.9]);