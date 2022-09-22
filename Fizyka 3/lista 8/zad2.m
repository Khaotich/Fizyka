%Karol Pichurski Matlab Lista 8
%Skrypt rysuj¹cy wykresy czasu biegu promienia od po³o¿enia punktu
%przekraczania granicy oœrodków

clear all;
N = 1000;

%dane
a = 20;
x = linspace(0, a, N);
v1 = 5;
v2 = 2;
h = 5;

%obliczenia dla v1 > v2
t1 = sqrt(x.^2 + h^2) ./ v1 + sqrt(h^2 + (a - x).^2) ./ v2;

%obliczenia dla v1 = v2
v2 = 5; 
t2 = sqrt(x.^2 + h^2) ./ v1 + sqrt(h^2 + (a - x).^2) ./ v2;

%obliczenia dla v1 < v2
v2 = 8; 
t3 = sqrt(x.^2 + h^2) ./ v1 + sqrt(h^2 + (a - x).^2) ./ v2;

%wykresy
plot(x, t1);
hold on;
plot(x, t2);
plot(x, t3);
grid on;
xlabel('x');
ylabel('t');
legend('v_1 > v_2', 'v_1 = v_2','v_1 < v_2');
title('Wykres zale¿noœci t(x)');
hold off;
