%SINSERIES: oblicza wartosc sin(x) z rozwiniecia w szereg

x = input("Prosz� podac x(skalar): ");
n = input("Prosz� podac n(liczba ca�kowita >0): ");
n = 1:n;
series = sum(((-1).^(n-1)).*(x.^((2.*n)-1))./silnia(2.*n-1));

disp(series); 