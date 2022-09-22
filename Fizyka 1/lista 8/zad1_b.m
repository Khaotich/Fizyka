N = 500;
a0 = 12;
g = 9.81;

x = 10:10:100;
y_max = [];

for i = x
  t0 = i;
  t = linspace(0,i,N);
  y = (0.5*(a0-g).*t.^2)-((a0.*t.^6)/(30*t0^4));
  y_max = [y_max, max(y)];
  
  disp(strcat('Dla t0=  ', mat2str(i), ' maksymalna wysokoœæ wynosi:', mat2str(max(y)), ' m.'));
endfor

plot(x,y_max);
title('y_m_a_x (t_0)');
xlabel('t_0 [s]');
ylabel('y [m]');