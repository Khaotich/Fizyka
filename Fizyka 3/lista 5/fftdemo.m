function fftdemo

% Prosty przyk�adowy program, kt�rego celem jest pokazanie, jak transformacja 
% Fouriera mo�e byc zaimplementowana w praktyce w Matlabie. 
% Ten przyk�ad to modyfikacja przyk�adowego programu ze strony samouczka w Matlabie.

Fs = 1000;            % cz�stotliwo�c pr�bkowania
delta_t = 1/Fs;       % czas pomi�dzy pr�bkami
N = 1024;             % ilo�c pr�bek          
t = (0:N-1)*delta_t;  % czas opisowy

% Utw�rzenie sztucznego sygna�u b�d�cego sum� sinusa 50 Hz i
% sygna�u cosinus 120 Hz oraz sygna�u losowego:

x = 1/2*sin(2*pi*20)+1/3*sin(2*pi*30)+1/4*sin(2*pi*40)+1/6*sin(2*pi*60)+1/8*sin(2*pi*80)+sin(2*pi*100);
x = x + 1/2*cos(2*pi*20)+1/3*cos(2*pi*30)+1/4*cos(2*pi*40)+1/6*cos(2*pi*60)+1/8*cos(2*pi*80)+cos(2*pi*100);
x = x + randn(size(t))

plot(Fs*t,x)         % Wykre�lenie reprezentacji w dziedzinie czasu
title('Sygna� w domenie czasu')
xlabel('Czas (ms)')

X = fft(x,N)/N;      % Szybka transformacja Fouriera

freqv = (Fs/2)*linspace(0,1,N/2);  % zasi�g cz�stotliwo�ci   

% Wykre�lenie warto�ci bezwzgl�dnej sk�adowych cz�stotliwo�ci w
% domenenie cz�stotliwo�ci. Rysowanie tylko cz�stotliwo�ci do
% po�owy cz�stotliwo�ci pr�bkowania (usu� z�o�on� cz��).
figure;              % Unikni�cie nadpisania poprzedniego wykresu
plot(freqv,2*abs(X(1:N/2))) % Wykresy po�owy widma cz�stotliwo�ci
title('Warto�� bezwzgl�dna reprezentacji w dziedzinie cz�stotliwo�ci')
xlabel('Cz�stotliwo�c (Hz)')
ylabel('|X(Cz�stotliwo�ci)|')