%Karol Pichurski Matlab Lista 8
%Skrypt rysuj�cy wykresy za�amania �wiat�a w pryzmacie

%dane
N = 1000;
theta = linspace(0, pi/2, N);
w = pi/6;
n1 = 1.511; %barwa czerwona
n2 = 1.52; %barwa zielona
n3 = 1.528; %barwa niebieska

%zadanie a

%obliczenia
delta1 = theta + asin(n1 * sin(w - asin(1/n1 - theta))) - w;
delta2 = theta + asin(n2 * sin(w - asin(1/n2 - theta))) - w;
delta3 = theta + asin(n3 * sin(w - asin(1/n3 - theta))) - w;

%wykresy
subplot(1,3,1);
plot(theta, delta1, 'color', 'red');
hold on;
plot(theta, delta2, 'color', 'green');
plot(theta, delta3, 'color', 'blue');
legend('Barwa czerwona', 'Barwa zielona', 'Barwa niebieska');
xlabel('\theta');
ylabel('\delta');
title('Wykres zale�no�ci \delta(\theta) dla 3 r�nych barw');
text(0.25, 2.5, 'Wykres dla materia�u szk�o kron');
hold off;

%zadanie b

%dane
%n dla barwy ��tej
n1 = 1.46; %szk�o kwarcowe
n2 = 1.492; %akryl
n3 = 1.516; %szk�o kron

%obliczenia
delta1 = theta + asin(n1 * sin(w - asin(1/n1 - theta))) - w;
delta2 = theta + asin(n2 * sin(w - asin(1/n2 - theta))) - w;
delta3 = theta + asin(n3 * sin(w - asin(1/n3 - theta))) - w;

%wykresy
subplot(1,3,2);
plot(theta, delta1, 'color', 'red');
hold on;
plot(theta, delta2, 'color', 'green');
plot(theta, delta3, 'color', 'blue');
legend('Szk�o kwarocowe', 'Akryl', 'Szk�o kron');
xlabel('\theta');
ylabel('\delta');
title('Wykres zale�no�ci \delta(\theta) dla 3 r�nych materia��w');
text(0.25, 2.5, 'Wykres dla barwy ��tej');
hold off;

%zadanie c

%dane
%n dla barwy ��tej i szk�a kwarcowego
w1 = pi/6; 
w2 = pi/4; 
w3 = pi/3; 
n = 1.46;

%obliczenia
delta1 = theta + asin(n * sin(w1 - asin(1/n - theta))) - w1;
delta2 = theta + asin(n * sin(w2 - asin(1/n - theta))) - w2;
delta3 = theta + asin(n * sin(w3 - asin(1/n - theta))) - w3;

%wykresy
subplot(1,3,3);
plot(theta, delta1, 'color', 'red');
hold on;
plot(theta, delta2, 'color', 'green');
plot(theta, delta3, 'color', 'blue');
legend('\omega = 30\circ', '\omega = 45\circ', '\omega = 60\circ');
xlabel('\theta');
ylabel('\delta');
title('Wykres zale�no�ci \delta(\theta) dla 3 r�nych k�t�w �amania pryzmatu');
text(0.25, 2.5, 'Wykres dla barwy ��tej i szk�a kwarcowego');
hold off;