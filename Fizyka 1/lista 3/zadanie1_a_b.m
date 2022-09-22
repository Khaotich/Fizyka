x = [-5:.01:5];
f_x = exp(-x.^2);
subplot(1,3,1);
plot(x,f_x)
xlabel('X','FontSize', 14);
ylabel('Y','FontSize', 14);
title('Funkcja \it{f(x) = e^{-x^2}}','FontSize', 16);

h = [1,0.5,0.05];
subplot(1,3,2)
hold on;

for i = 1:3
  f_x_prim = ((exp(-(x+h(i)).^2))-(exp(-(x-h(i)).^2)))/2*h(i); 
  plot(x,f_x_prim);
  xlabel('X','FontSize', 14);
  ylabel('Y','FontSize', 14);
  title('Pochodna funkcji \it{f`(x) = f(x+h)-f(x-h)/2h}','FontSize', 16);
endfor
legend('h=1','h=0.5','h=0.05');

subplot(1,3,3);
d_f_x = diff(f_x)./diff(x);
plot(x(2:end),d_f_x)
xlabel('X','FontSize', 14);
ylabel('Y','FontSize', 14);
title('Pochodna funkcji \it{f`(x) = df(x)/dx}','FontSize', 16);