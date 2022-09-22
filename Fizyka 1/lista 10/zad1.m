#lista 10

#dane
dane = load('spadajaca_pilka.dat')';
t = dane(1, 1:end);
y = dane(2, 1:end);
g = 9.81;

v = diff(y)./diff(t);
a = diff(v)./diff(t(2:end));

#a
subplot(3,2,1);
hold on;
plot(t, y);
title('y (t)');
xlabel('t [s]');
ylabel('y [m]');
text(2, 1.5, '(a)');

#b
subplot(3,2,2);
plot(t(2:end), v);
title('v (t)');
xlabel('t [s]');
ylabel('v [m/s]');
text(2, 4, '(b)');

#c
subplot(3,2,3);
plot(t(3:end), a);
title('a (t)');
xlabel('t [s]');
ylabel('a [m/s^2]');
text(2, 1500, '(c)');

#dane dla t(0 ; 0.5)
t_ = t(1:501);
y_ = y(1:501);
a_ = a(1:501);
v_ = v(1:501);

#dane wyliczone (model)
y_o = y(1)-(g*t_.^2)/2;
v_o = t_*g*-1;

#d
subplot(3,2,4);
plot(t_ , a_);
title('a (t), t(0 ; 0.5)');
xlabel('t [s]');
ylabel('a [m/s^2]');
text(0.6, -9.3, '(d)');

#e
subplot(3,2,5);
plot(t_ , y_,'-', t_, y_o, '--');
title('y (t), t(0 ; 0.5)');
xlabel('t [s]');
ylabel('y [m]');
text(0.6, 1.2, '(e)');
legend({'pomiar', 'model'}, 'location','southwest');

#f
subplot(3,2,6);
plot(t_ , v_,'-', t_, v_o, '--');
title('v (t), t(0 ; 0.5)');
xlabel('t [s]');
ylabel('v [m/s]');
text(0.6, -1, '(f)');
legend({'pomiar', 'model'}, 'location','southwest');

hold off;