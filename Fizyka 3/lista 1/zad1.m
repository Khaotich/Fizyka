%Karol Pichurski, Lista 1 Matlab

%Przez pêtleê w formie trójk¹ta bêdc¹go po³owa¹ kwadratu o boku 5 cm przep³ywa
%sta³y pr¹d o natê¿eniu 10 mA. Pêtla znajduje siê w powietrzu.
%skrypt liczy indukcjê magnetyczn¹ w punkcie P, le¿¹cym w czwartym rogu kwadratu.

clear all;

%dane
I = 10*10^-3;
a = 0.05;

%obliczenia
B1 = B_drut(I, a, -pi/4, 0);
B2 = B_drut(I, a, 0, pi/4);
B3 = B_drut(I, a*sqrt(2)/2, pi/4, -pi/4);
B_sum = B1 + B2 + B3;

%rysunek
plot([0, 5], [0, 0], '-b');
hold on;
plot([0, 0], [0, 5], '-b');
plot([5, 0], [0, 5], '-b');
plot([5, 0], [5, 5], '--k');
plot([5, 5], [0, 5], '--k');
plot(5, 5, 'or');
quiver(2.5, 2.75, -0.5, 0.5, 'y');
text(5.1, 5.1, 'P');
text(2.45, 3.2, 'I');
hold off;

%wyœwietlenie wyników
disp(strcat('B1: ', num2str(B1)));
disp(strcat('B2: ', num2str(B2)));
disp(strcat('B3: ', num2str(B3)));
disp(strcat('Suma indukcji: ', num2str(B_sum)));