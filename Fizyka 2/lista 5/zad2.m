clear all;
hold on;

#dane
theta = linspace(0, 2*pi, 1000);

##Ziemia
e_earth = 0.01671;
a_earth = 1.49 * 10^11;

##Jowisz
e_jupiter = 0.0489;
a_jupiter = 7.78 * 10^11;

##Halleya
e_halleya = 0.97;
a_halleya = 17.8341 * 149597870700;

#obliczenia
r_earth = (a_earth*(1 - e_earth^2))./(1 + e_earth .* cos(theta));
r_jupiter = (a_jupiter*(1 - e_jupiter^2))./(1 + e_jupiter .* cos(theta));
r_halleya = (a_halleya*(1 - e_halleya^2))./(1 + e_halleya .* cos(theta));

#wykresy
plot(0, 0, 'x', 'color', 'red');

polar(theta, r_earth);
polar(theta, r_jupiter);
polar(theta, r_halleya);

legend('S³oñce', 'Ziemia', 'Jowisz', 'Kometa Halleya');

hold off;