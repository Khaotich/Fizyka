%SINSERIES: oblicza wartosc sin(x) z rozwiniecia w szereg

x = input("Proszê podac x(skalar): ");
n = input("Proszê podac n(liczba ca³kowita >0): ");
n = 1:n;
series = sum(((-1).^(n-1)).*(x.^((2.*n)-1))./silnia(2.*n-1));

disp(series); 