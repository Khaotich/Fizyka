clear all;

#dane
N = 50;
e = [-0.5, 0.5, 1, 1.5];
x_w = 1;
y_w = 1;

#obliczenia
x = linspace(-20, 20, N); 
y_1 = ((x - x_w).^2)/(4 * e(1)) + y_w;
y_2 = ((x - x_w).^2)/(4 * e(2)) + y_w;
y_3 = ((x - x_w).^2)/(4 * e(3)) + y_w;
y_4 = ((x - x_w).^2)/(4 * e(4)) + y_w;

#wykresy
plot(x, y_1, 'color', 'red');
hold on;
plot(x_w, y_w + e(1), 'x', 'color', 'red');

plot(x, y_2, 'color', 'blue');
plot(x_w, y_w + e(2), 'x', 'color', 'blue');

plot(x, y_3, 'color', 'green');
plot(x_w, y_w + e(3), 'x', 'color', 'green');

plot(x, y_4, 'color', 'yellow');
plot(x_w, y_w + e(4), 'x', 'color', 'yellow');

legend('Parabola o e = -0.5', 'Ognisko paraboli o e = -0.5',
       'Parabola o e = 0.5', 'Ognisko paraboli o e = 0.5',
       'Parabola o e = 1', 'Ognisko paraboli o e = 1',
       'Parabola o e = 1.5', 'Ognisko paraboli o e = 1.5');

xlabel('X');
ylabel('Y');       
hold off;