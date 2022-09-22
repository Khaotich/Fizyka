#lista 9

#dane
czas = [0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1];
polozenie = [31, 27, 24, 19, 18, 15, 12, 9, 6, 3, 0];

#obliczenia
wielomian = polyfit(czas, polozenie, 1);
wartosci_wielomianu = polyval(wielomian, czas);

#wykres
plot(czas, wartosci_wielomianu);
hold on;
errorbar(czas, polozenie, 0.1, 1, '~>o');

ylabel('x [cm]');
xlabel('t [s]');

text(0.5, 33,'ruch jednostajny-prostoliniowy', 'fontsize', 16);
text(0.5, 30,'x(t) = -30.1t + 30', 'fontsize', 16);
text(0.5, 27, 'v = -0.311 m/s', 'fontsize', 16);

hold off;