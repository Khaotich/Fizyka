#zadanie 1

#dane
v = ones(1,11).*10;
t = [0:1:10];
x = v.*t;

#wykres ruchu
subplot(1,2,1);
zera = zeros(1,11);
plot(t,x)
hold on;
xlabel('t [s]');
ylabel('x [m]');
quiver(t, x, zera, v, 0.3);
text(t, x-0.3, '10 m/s');
legend({'x(t)', 'v_x(t)'}, 'location', 'northwest');
hold off;

#wykres prêdkoœci
subplot(1,2,2);
plot(t, v);
hold on;
xlabel('t [s]');
ylabel('v_x [m/s]');
hold off;