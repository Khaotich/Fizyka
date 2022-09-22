%Karol Pichurski Matlab lista 5 zadanie 4
%Skrypt rysuj¹cy wykresy sygna³u i spektra fragmentu mojego utworu.

clear all;

%otwarcie pliku
s = 'my.wav';

%dane
N = 2^14;
[f,Fs] = audioread(s, [1 N]);

%obliczenia
delta_t = 1/Fs;                                                      
t = (0:N-1)*delta_t;
g = f(:,1);
X = abs(fft(g,N)/N); 
freqv = Fs*linspace(0,1,N);

%wykres sygna³u
subplot(2,1,1);
plot(Fs*t, g);
title('Sygna³ w jednosce czasu');
xlabel('Czas (ms)')

%wykres spektra
subplot(2,1,2);
plot(freqv,X);
title('Wartoœæ bezwzglêdna spektra');
xlabel('Czêstotliwoœc (Hz)');
ylabel('|X(Czêstotliwoœci)|');
