% Karol Pichurski Matlab Lista 6 Zadanie 1
% Skrypt rysuj¹cy animacjê 5 ró¿nych fal.

clear all;

%dane
k = 2;
w = 8;
A = 2.5;

%dane do wykresów
N = 1000;
x = linspace(-10, 10, N);  
y_a = linspace(-10, 10, N);  
y_b = linspace(-10, 10, N);  
y_c = linspace(-10, 10, N);  
y_d = linspace(-10, 10, N);  
y_e = linspace(-10, 10, N);  

%rysowanie wykresów
subplot(5, 1, 1);
p_a = plot(x, y_a);
title('A = 2.5  \omega = 8  K = 2');
xlabel('t [s]');
ylabel('f [Hz]');
axis([-10 10 -6 6]);

subplot(5, 1, 2);
p_b = plot(x, y_b);
title('A = 2.5  \omega = 8  K = 2');
xlabel('t [s]');
ylabel('f [Hz]');
axis([-10 10 -6 6]);

subplot(5, 1, 3);
p_c = plot(x, y_c);
title('A_1 = 2.5  A_2 = 0.5  \omega = 8  K = 2');
xlabel('t [s]');
ylabel('f [Hz]');
axis([-10 10 -6 6]);

subplot(5, 1, 4);
p_d = plot(x, y_d);
title('A = 2.5  \omega = 8  K_1 = 2  K_2 = 6');
xlabel('t [s]');
ylabel('f [Hz]');
axis([-10 10 -6 6]);

subplot(5, 1, 5);
p_e = plot(x, y_e);
title('A = 2.5  \omega_1 = 8  \omega_2 = 12  K = 2');
xlabel('t [s]');
ylabel('f [Hz]');
axis([-10 10 -6 6]);

%rysowanie animacji
for i=1:500
    t = i*0.013;
    
    y_a = A*sin(k*x - w*t);
    set(p_a,'XData', x,'YData', y_a);

    y_b = A*sin(k*x - w*t) + A*sin(k*x + w*t);
    set(p_b,'XData', x,'YData', y_b); 
    
    y_c = A*sin(k*x - w*t) + 0.5*sin(k*x + w*t);
    set(p_c,'XData', x,'YData', y_c);  
    
    y_d = A*sin(2*x - w*t) + A*sin(6*x + w*t);
    set(p_d,'XData', x,'YData', y_d);   
    
    y_e = A*sin(k*x - w*t) + A*sin(k*x + 12*t);
    set(p_e,'XData', x,'YData', y_e);
    
    drawnow;    
end