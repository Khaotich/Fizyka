% Snippet 1: Here is a piece of code that shows how to read data from an 
% audio file in Matlab:

clear all;

   s = 'piccoloHigh.wav';  % File name (the file must be in 
                           % the same folder as your program)
   N = 2^14;
   nstart = 1;   % First element number you want to use in 
                 % your audio file
   nend = N;     % last element number you want to use 
   [f,Fs] = audioread(s, [nstart nend]);
   %sound(f,Fs); % Play back the sound if you want 
                 % (then remove %) for control purposes
   g = f(:,1);   % Pick a mono signal out of the stereo 
                 % signal f
   X = (1.0/N)*fft(g);  % FastFourierTransform of the 
                 % audio signal
   Xa = abs(X);  % Calculate the absolute value out of the 
                 % freqency domain representation
               