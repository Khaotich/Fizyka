x = [-5:.01:5];
f_x = exp(-x.^2);
subplot(1,2,1);
plot(x,f_x)
xlabel('X','FontSize', 14);
ylabel('Y','FontSize', 14);
title('Funkcja \it{f(x) = e^{-x^2}}','FontSize', 16);

subplot(1,2,2);
h = 1;
f_x_prim = ((exp(-(x+h).^2))-(exp(-(x-h).^2)))/2*h; 
plot(x,f_x_prim);
hold on;
xlabel('X','FontSize', 14);
ylabel('Y','FontSize', 14);
title('Pochodna funkcja \it{f(x) = e^{-x^2}}','FontSize', 16);

subplot(1,2,2);
d_f_x = diff(f_x)./diff(x);
plot(x(2:end),d_f_x);

d2_f_x = -2*x.*exp(-x.^2);
plot(x,d2_f_x)
legend('f(x+h)-f(x-h)/2h','df(x)/dx','-2*e^{-x^2}');