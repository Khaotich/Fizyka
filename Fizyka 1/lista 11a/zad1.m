#lista 11a

#dane
m = 1;
k = 100;
g = 9.81;

N = 200;
delta_t = 0.01;

#macierze zerowe 
t = zeros(N,1);
F = zeros(N,1);
v = zeros(N,1);
y = zeros(N,1);

#obliczenia
for i = 1:N
  
  F(i) = -k*y(i)-m*g;
  a = F(i)/ m;
  v(i+1) = v(i) + a*delta_t;
  y(i+1) = y(i) + v(i+1)*delta_t;
  t(i+1) = t(i)+delta_t; 
  
endfor

#rysowanie wykresów

#wykres po³o¿enia
subplot(3,1,1);
title('y(t)');
hold on;
xlabel('t [s]');
ylabel('y [m]');
comet(t,y);
hold off;

#wykres prêdkoœci
subplot(3,1,2);
title('v(t)');
hold on;
xlabel('t [s]');
ylabel('v [m/s]');
comet(t,v);
hold off;

#wykres si³y
subplot(3,1,3);
title('F(t)');
hold on;
xlabel('t [s]');
ylabel('F [N]');
comet(t(2:end),F);
hold off;