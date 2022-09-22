function fftdemo

% Prosty przyk³adowy program, którego celem jest pokazanie, jak transformacja 
% Fouriera mo¿e byc zaimplementowana w praktyce w Matlabie. 
% Ten przyk³ad to modyfikacja przyk³adowego programu ze strony samouczka w Matlabie.

Fs = 1000;            % czêstotliwoœc próbkowania
delta_t = 1/Fs;       % czas pomiêdzy próbkami
N = 1024;             % iloœc próbek          
t = (0:N-1)*delta_t;  % czas opisowy

% Utwórzenie sztucznego sygna³u bêd¹cego sum¹ sinusa 50 Hz i
% sygna³u cosinus 120 Hz oraz sygna³u losowego:

x = 1/2*sin(2*pi*20)+1/3*sin(2*pi*30)+1/4*sin(2*pi*40)+1/6*sin(2*pi*60)+1/8*sin(2*pi*80)+sin(2*pi*100);
x = x + 1/2*cos(2*pi*20)+1/3*cos(2*pi*30)+1/4*cos(2*pi*40)+1/6*cos(2*pi*60)+1/8*cos(2*pi*80)+cos(2*pi*100);
x = x + randn(size(t))

plot(Fs*t,x)         % Wykreœlenie reprezentacji w dziedzinie czasu
title('Sygna³ w domenie czasu')
xlabel('Czas (ms)')

X = fft(x,N)/N;      % Szybka transformacja Fouriera

freqv = (Fs/2)*linspace(0,1,N/2);  % zasiêg czêstotliwoœci   

% Wykreœlenie wartoœci bezwzglêdnej sk³adowych czêstotliwoœci w
% domenenie czêstotliwoœci. Rysowanie tylko czêstotliwoœci do
% po³owy czêstotliwoœci próbkowania (usuñ z³o¿on¹ czêœæ).
figure;              % Unikniêcie nadpisania poprzedniego wykresu
plot(freqv,2*abs(X(1:N/2))) % Wykresy po³owy widma czêstotliwoœci
title('Wartoœæ bezwzglêdna reprezentacji w dziedzinie czêstotliwoœci')
xlabel('Czêstotliwoœc (Hz)')
ylabel('|X(Czêstotliwoœci)|')