%Karol Pichurski Matlab lista 5 zadanie 3
%Skrypt rysuj�cy wykresy sygna�u i spektra 3 r�nych instr�ment�w.

clear all;

%otwarcie plik�w
s1 = 'piccoloHigh.wav';
s2 = 'tubaHigh.wav';
s3 = 'trumpetHigh.wav';

%dane
N = 2^14;
[f1,Fs1] = audioread(s1, [1 N]);
[f2,Fs2] = audioread(s2, [1 N]);
[f3,Fs3] = audioread(s3, [1 N]);

%zamkni�cie plik�w
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

%wykresy sygna�u
subplot(3,1,1);
plot(Fs1*t1, g1);
title('Sygna� w jednosce czasu dla pikolo');
xlabel('Czas (ms)')
subplot(3,1,2);
plot(Fs2*t2, g2);
title('Sygna� w jednosce czasu dla tuby');
xlabel('Czas (ms)');
subplot(3,1,3);
plot(Fs3*t3, g3);
title('Sygna� w jednosce czasu dla tr�bki');
xlabel('Czas (ms)');

%wykresy spektra
figure;
subplot(3,1,1);
plot(freqv1,X1);
title('Warto�� bezwzgl�dna spektra dla pikolo');
xlabel('Cz�stotliwo�c (Hz)');
ylabel('|X(Cz�stotliwo�ci)|');
subplot(3,1,2);
plot(freqv2,X2);
title('Warto�� bezwzgl�dna spektra dla tuby');
xlabel('Cz�stotliwo�c (Hz)');
ylabel('|X(Cz�stotliwo�ci)|');
subplot(3,1,3);
plot(freqv3,X3);
title('Warto�� bezwzgl�dna spektra dla tr�bki');
xlabel('Cz�stotliwo�c (Hz)');
ylabel('|X(Cz�stotliwo�ci)|');