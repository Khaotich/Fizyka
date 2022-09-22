%Karol Pichurski Matlab lista 5 zadanie 3
%Skrypt rysuj¹cy wykresy sygna³u i spektra 3 ró¿nych instrómentów.

clear all;

%otwarcie plików
s1 = 'piccoloHigh.wav';
s2 = 'tubaHigh.wav';
s3 = 'trumpetHigh.wav';

%dane
N = 2^14;
[f1,Fs1] = audioread(s1, [1 N]);
[f2,Fs2] = audioread(s2, [1 N]);
[f3,Fs3] = audioread(s3, [1 N]);

%zamkniêcie plików
%close(s1);
%close(s2);
%close(s3);

%obliczenia
delta_t1 = 1/Fs1;                             
delta_t2 = 1/Fs2;                             
delta_t3 = 1/Fs3;                           
t1 = (0:N-1)*delta_t1;
t2 = (0:N-1)*delta_t2;
t3 = (0:N-1)*delta_t3;

g1 = f1(:,1);
g2 = f2(:,1);
g3 = f3(:,1);

X1 = abs(fft(g1,N)/N); 
freqv1 = Fs1*linspace(0,1,N);
X2 = abs(fft(g2,N)/N); 
freqv2 = Fs2*linspace(0,1,N);
X3 = abs(fft(g3,N)/N); 
freqv3 = Fs3*linspace(0,1,N);

%wykresy sygna³u
subplot(3,1,1);
plot(Fs1*t1, g1);
title('Sygna³ w jednosce czasu dla pikolo');
xlabel('Czas (ms)')
subplot(3,1,2);
plot(Fs2*t2, g2);
title('Sygna³ w jednosce czasu dla tuby');
xlabel('Czas (ms)');
subplot(3,1,3);
plot(Fs3*t3, g3);
title('Sygna³ w jednosce czasu dla tr¹bki');
xlabel('Czas (ms)');

%wykresy spektra
figure;
subplot(3,1,1);
plot(freqv1,X1);
title('Wartoœæ bezwzglêdna spektra dla pikolo');
xlabel('Czêstotliwoœc (Hz)');
ylabel('|X(Czêstotliwoœci)|');
subplot(3,1,2);
plot(freqv2,X2);
title('Wartoœæ bezwzglêdna spektra dla tuby');
xlabel('Czêstotliwoœc (Hz)');
ylabel('|X(Czêstotliwoœci)|');
subplot(3,1,3);
plot(freqv3,X3);
title('Wartoœæ bezwzglêdna spektra dla tr¹bki');
xlabel('Czêstotliwoœc (Hz)');
ylabel('|X(Czêstotliwoœci)|');