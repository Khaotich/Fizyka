
#dane
N = 1000;
x = linspace(0,5, N);

omega_org = 70;
omega_a = 68;
omega_b = 66;
omega_c = 64;

A = 1;
y1 = A*sin(omega_org.*x);

#wykres 1
y2 = A.*sin(omega_a.*x);

subplot(2, 3, 1);
plot(x, y1);
hold on;
plot(x, y2);

axis([0 0.5 -1 1]);
legend('fala 1', 'fala 2');
xlabel('t');
ylabel('y');
hold off;

#wykres 2
y2 = A.*sin(omega_b.*x);

subplot(2, 3, 2);
plot(x, y1);
hold on;
plot(x, y2);

axis([0 0.5 -1 1]);
legend('fala 1', 'fala 2');
xlabel('t');
ylabel('y');
hold off;

#wykres 3
y2 = A.*sin(omega_c.*x);

subplot(2, 3, 3);
plot(x, y1);
hold on;
plot(x, y2);

axis([0 0.5 -1 1]);
legend('fala 1', 'fala 2');
xlabel('t');
ylabel('y');
hold off;

#wykres 4
y2 = A.*sin(omega_a.*x);
B = 2*A*cos(((omega_org-omega_a).*x)/2);

subplot(2, 3, 4);
plot(x, y1+y2);
hold on;
plot(x, B);

axis([0 5 -2 2]);
legend('suma fal', 'amplituda');
xlabel('t');
ylabel('y');
hold off;

#wykres 5
y2 = A.*sin(omega_b.*x);
B = 2*A*cos(((omega_org-omega_b).*x)/2);

subplot(2, 3, 5);
plot(x, y1+y2);
hold on;
plot(x, B);

axis([0 2 -2 2]);
legend('suma fal', 'amplituda');
xlabel('t');
ylabel('y');
hold off;

#wykres 6
y2 = A.*sin(omega_c.*x);
B = 2*A*cos(((omega_org-omega_c).*x)/2);

subplot(2, 3, 6);
plot(x, y1+y2);
hold on;
plot(x, B);

axis([0 2 -2 2]);
legend('suma fal', 'amplituda');
xlabel('t');
ylabel('y');
hold off;