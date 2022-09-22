%Karol Pichurski Matlab Lista 7 Zadanie 2
%Skrypt rysuj¹cy wykres po³o¿enia obrazu w funkcji po³o¿enia przedmiotu od
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
xlabel('Odleg³oœæ przedmiotu');
ylabel('Odleg³oœæ obrazu');
title('Wykres zale¿noœci odleg³oœci obrazu od odleg³oœci przedmiotu dla soczewki o ogniskowej -10');
xlim([-10.1 -9.9]);