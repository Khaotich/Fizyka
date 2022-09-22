#a
N = 1000;
a0 = 12;
g = 9.81;

t0_10 = 10;
t0_20 = 20;
t0_40 = 40;
t_10 = linspace(0,t0_10,N);
t_20 = linspace(0,t0_20,N);
t_40 = linspace(0,t0_40,N);

# y(t)
subplot(3,1,1);

y_10 = (0.5*(a0-g).*t_10.^2)-((a0.*t_10.^6)/(30*t0_10^4));
y_20 = (0.5*(a0-g).*t_20.^2)-((a0.*t_20.^6)/(30*t0_20^4));
y_40 = (0.5*(a0-g).*t_40.^2)-((a0.*t_40.^6)/(30*t0_40^4));

plot(t_10,y_10);
hold on;
plot(t_20,y_20);
plot(t_40,y_40);

title('y (t)');
xlabel('t [s]');
ylabel('y [m]');
legend('t_0 = 10','t_0 = 20', 't_0 = 40')

hold off;

# v(t)
subplot(3,1,2);

v_10 = ((a0-g)*t_10.^2)-((a0.*t_10.^5)/(5*t0_10^4));
v_20 = ((a0-g)*t_20.^2)-((a0.*t_20.^5)/(5*t0_20^4));
v_40 = ((a0-g)*t_40.^2)-((a0.*t_40.^5)/(5*t0_40^4));

plot(t_10,v_10);
hold on;
plot(t_20,v_20);
plot(t_40,v_40);

title('v (t)');
xlabel('t [s]');
ylabel('v [m/s]');
legend('t_0 = 10','t_0 = 20', 't_0 = 40')

hold off;

# a(t)
subplot(3,1,3);

a_10 = (a0-g)-((a0.*t_10.^4)/(t0_10^4));
a_20 = (a0-g)-((a0.*t_20.^4)/(t0_20^4));
a_40 = (a0-g)-((a0.*t_40.^4)/(t0_40^4));

plot(t_10,a_10);
hold on;
plot(t_20,a_20);
plot(t_40,a_40);

title('a (t)');
xlabel('t [s]');
ylabel('a [m/s^2]');
legend('t_0 = 10','t_0 = 20', 't_0 = 40')

hold off;