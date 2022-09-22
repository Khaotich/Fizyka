%Karol Pichurski Matlab Lista 10 Zadanie 1
%skrypt pokazujπcy wyd≥uøenie materia≥u od temperatury

clear;

%dane
n = 10000;
L0 = 1;
T = linspace(0, 100, n);

d_asfalt = 1.9 * 10^-4;
d_diament = 0.012 * 10^-4;
d_miedz = 0.162 * 10^-4;
d_stal = 0.12 * 10^-4;
d_szklo = 0.5 * 10^-4;

%obliczenia
delta_l_asfalt = d_asfalt*L0*T;
delta_l_diament = d_diament*L0*T;
delta_l_miedz = d_miedz*L0*T;
delta_l_stal = d_stal*L0*T;
delta_l_szklo = d_szklo*L0*T;

%wykres
plot(T, delta_l_asfalt);
hold on;
plot(T, delta_l_diament);
plot(T, delta_l_miedz);
plot(T, delta_l_stal);
plot(T, delta_l_szklo);
title('Wykres zaleønoúci wyd≥uøenia materia≥u od temperatury \DeltaL = f(\DeltaT)');
xlabel('\DeltaT [\circC]');
ylabel('\DeltaL [m]');
grid on;
legend('Asfalt', 'Diament', 'Miedü', 'Stal', 'Szk≥o', 'Location','northwest');
hold off;