%Karol Pichurski Matlab Lista 7 Zadanie 1
%Skrypt rysuj¹cy wykres po³ozenia obrazu w funkcji po³ozenia przedmiotu dla 
%wypuk³ej powierzchni zakrzywiaj¹cej o promieniu krzywizny R = 10. Wspó³czynnik 
%za³amania z jednej strony powierzchni wynosi n1 = 1 a z drugiej n2 = 1,5. 
%(i)zaleznoœc dla ca³ego zakresu odleg³oœci; 
%(ii) dla obszaru, gdzie obraz bêdzie pozorny; 
%(iii) dla obszaru, gdzie obraz bêdzie rzeczywisty.

clear all;

%dane
N = 1000;
R = 10;
n1 = 1;
n2 = 1.5;

%obliczenia
x1 = linspace(18, 22, N);
x2 = linspace(18, 20, N);
x3 = linspace(20, 22, N);

y1 = (((n2-n1)./R-n1./x1)./n2).^-1;
y2 = (((n2-n1)./R-n1./x2)./n2).^-1;
y3 = (((n2-n1)./R-n1./x3)./n2).^-1;

%wykresy
subplot(3,1,1);
plot(x1,y1);
title('Wykres zalo¿noœci odleg³oœci obrazu od odleg³oœci przdedmiotu dla ca³ego zakresu');
xlabel('Odleg³oœæ przedmiotu');
ylabel('Odleg³oœæ obrazu');

subplot(3,1,2);
plot(x2,y2);
title('Wykres zalo¿noœci odleg³oœci obrazu od odleg³oœci przdedmiotu dla obrazu pozornego');
xlabel('Odleg³oœæ przedmiotu');
ylabel('Odleg³oœæ obrazu');
xlim([19.8 20.2]);

subplot(3,1,3);
plot(x3,y3);
title('Wykres zalo¿noœci odleg³oœci obrazu od odleg³oœci przdedmiotu dla obrazu rzeczywistrgo');
xlabel('Odleg³oœæ przedmiotu');
ylabel('Odleg³oœæ obrazu');
xlim([19.8 20.2]);