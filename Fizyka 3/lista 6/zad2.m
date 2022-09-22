% Karol Pichurski Matlab Lista 6 Zadanie 2
% Skrypt rysuj¹cy animacjê 5 ró¿nych fal w 3D.

clear all;

%dane
k = 2;
w = 8;
A = 2.5;

%dane do wykresów
N = 1000;
[x, y] = meshgrid(-10:10:N); 
z_a = meshgrid(-10:10:N);  
z_b = meshgrid(-10:10:N);  
z_c = meshgrid(-10:10:N);  
z_d = meshgrid(-10:10:N);  
z_e = meshgrid(-10:10:N);  

%rysowanie wykresów
subplot(5, 1, 1);
p_a = surf(x, y, z_a);
title('A = 2.5  \omega = 8  K = 2');
xlabel('t [s]');
zlabel('f [Hz]');
zlim([-6 6]);
    
subplot(5, 1, 2);
p_b = surf(x, y, z_b);
title('A = 2.5  \omega = 8  K = 2');   
xlabel('t [s]');
zlabel('f [Hz]');
zlim([-6 6]);
 
subplot(5, 1, 3);
p_c = surf(x, y, z_c);
title('A_1 = 2.5  A_2 = 0.5  \omega = 8  K = 2');  
xlabel('t [s]');
zlabel('f [Hz]');
zlim([-6 6]);
    
subplot(5, 1, 4);
p_d = surf(x, y, z_d);
title('A = 2.5  \omega = 8  K_1 = 2  K_2 = 6');
xlabel('t [s]');
zlabel('f [Hz]'); 
zlim([-6 6]);
    
subplot(5, 1, 5);
p_e = surf(x, y, z_e);
title('A = 2.5  \omega_1 = 8  \omega_2 = 12  K = 21');
xlabel('t [s]');
zlabel('f [Hz]');
zlim([-6 6]);

%rysowanie animacji
for i=1:200
    t = i*0.03;
    
    z_a = A*sin(k*x - w*t);
    set(p_a, 'XData', x, 'YData', y, 'ZData', z_a);
    
    z_b = A*sin(k*x - w*t) + A*sin(k*x + w*t);
    set(p_b, 'XData', x, 'YData', y, 'ZData', z_b); 
    
    z_c = A*sin(k*x - w*t) + 0.5*sin(k*x + w*t);
    set(p_c, 'XData', x, 'YData', y, 'ZData', z_c);   
    
    z_d = A*sin(2*x - w*t) + A*sin(6*x + w*t);
    set(p_d, 'XData', x, 'YData', y, 'ZData', z_d);    
    
    z_e = A*sin(k*x - w*t) + A*sin(k*x + 12*t);
    set(p_e, 'XData', x, 'YData', y, 'ZData', z_e);
    
    drawnow;
end