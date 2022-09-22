#lista 11b

#dane
m = 1;
k = 100;
g = 9.81;

N = 500;
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

#wykres z wideo(11b)

for i = 1:N
  
  clf;
  rectangle("Position", [-0.025,-0.025+y(i),0.05,0.2]);
  hold on;
  
  plot(0, 0.075 + y(i),"o");
  quiver(0, 0.075 + y(i), 0, v(i)/5); #wektor prêdkoœci
  quiver(0, 0.075 + y(i), 0, F(i)/30); #wektor si³y
  
  xlim([-0.1,0.1]);
  ylim([-0.5,0.3]);
  xlabel('x [m]');
  ylabel('y [m]');
  legend('ciê¿arek','po³o¿enie', 'prêdkoœc', 'si³a');
  
  pause(0.0000001);
  file = strcat('video/','file', num2str(i),'.png')
  print(file); 
 
endfor
