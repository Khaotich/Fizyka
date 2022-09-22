clear all;
clf();

%dane
N = 500;
t = linspace(0, 2*pi, N);
ax = 5;
ay = 5;
alfa = 1; 
delta = 1;
wx = 1; 
wy = 1;

l1 = (-100:1:100);
l0 = zeros(201,1);

%1
x = ax * cos(wx*t + delta);
y = ay * cos(wy*t + alfa);

subplot(3,3,1);
plot(x,y);
hold on;
plot(l0, l1, "color", "black");
plot(l1, l0, "color", "black");

text(-4, 4.5, "A_x/A_y = 1");
text(-4, 3.5, '\delta = \alpha');

xlabel("X");
ylabel("Y");
axis([-6 6 -6 6]);
hold off;

%2
ay = 2.5;
x = ax * cos(wx*t + delta);
y = ay * cos(wy*t + alfa);

subplot(3,3,2);
plot(x,y);
hold on;
plot(l0, l1, "color", "black");
plot(l1, l0, "color", "black");

text(-4, 4.5, "A_x/A_y = 2");
text(-4, 3.5, '\delta = \alpha');

xlabel("X");
ylabel("Y");
axis([-6 6 -6 6]);
hold off;

%3
ay = 5;
alfa = alfa + pi/2;
x = ax * cos(wx*t + delta);
y = ay * cos(wy*t + alfa);

subplot(3,3,3);
plot(x,y);
hold on;
plot(l0, l1, "color", "black");
plot(l1, l0, "color", "black");

text(-4, 4.5, "A_x/A_y = 1");
text(-4, 3.5, '\delta = \alpha + \pi/2');

xlabel("X");
ylabel("Y");
axis([-6 6 -6 6]);
hold off;

%4
ay = 2.5;
x = ax * cos(wx*t + delta);
y = ay * cos(wy*t + alfa);

subplot(3,3,4);
plot(x,y);
hold on;
plot(l0, l1, "color", "black");
plot(l1, l0, "color", "black");

text(-4, 4.5, "A_x/A_y = 2");
text(-4, 3.5, '\delta = \alpha + \pi/2');

xlabel("X");
ylabel("Y");
axis([-6 6 -6 6]);
hold off;

%5
delta = alfa - pi/4;
x = ax * cos(wx*t + delta);
y = ay * cos(wy*t + alfa);

subplot(3,3,5);
plot(x,y);
hold on;
plot(l0, l1, "color", "black");
plot(l1, l0, "color", "black");

text(-4, 4.5, "A_x/A_y = 2");
text(-4, 3.5, '\delta = \alpha - \pi/4');

xlabel("X");
ylabel("Y");
axis([-6 6 -6 6]);
hold off;

%6
ax = 5;
ay = 5;
alfa = 1; 
delta = 1;
wx = 1; 
wy = 1;

ay = ay/2;
delta = delta - pi/4;
wx = wx*2;

x = ax * cos(wx*t + delta);
y = ay * cos(wy*t + alfa);

subplot(3,3,6);
plot(x.*-1,y);
hold on;
plot(l0, l1, "color", "black");
plot(l1, l0, "color", "black");

text(-4, 4.5, "A_x/A_y = 2");
text(-4, 3.5, '\delta = \alpha - \pi/4');
text(-4, 2.5, '\omega_y/\omega_x = 2');

xlabel("X");
ylabel("Y");
axis([-6 6 -6 6]);
hold off;

%7
wx = 9;
wy = 8;

x = ax * cos(wx*t + delta);
y = ay * cos(wy*t + alfa);

subplot(3,3,7);
plot(x,y);
hold on;
plot(l0, l1, "color", "black");
plot(l1, l0, "color", "black");

text(-4, 4.5, "A_x/A_y = 2");
text(-4, 3.5, '\omega_x/\omega_y = 9/8');

xlabel("X");
ylabel("Y");
axis([-6 6 -6 6]);
hold off;

%8
wx = 2;
wy = 5;
ax = ax/7;

x = ax * cos(wx*t + delta);
y = ay * cos(wy*t + alfa);

subplot(3,3,8);
plot(x,y);
hold on;
plot(l0, l1, "color", "black");
plot(l1, l0, "color", "black");

text(-4, 4.5, "A_x/A_y = 7/25");
text(-4, 3.5, '\omega_x/\omega_y = 2/5');

xlabel("X");
ylabel("Y");
axis([-6 6 -6 6]);
hold off;

%9
wx = 10;
wy = 7;
ax = ax*2;

x = ax * cos(wx*t + delta);
y = ay * cos(wy*t + alfa);

subplot(3,3,9);
plot(x,y);
hold on;
plot(l0, l1, "color", "black");
plot(l1, l0, "color", "black");

text(-4, 4.5, "A_x/A_y = 14/25");
text(-4, 3.5, '\omega_x/\omega_y = 10/7');

xlabel("X");
ylabel("Y");
axis([-6 6 -6 6]);
hold off;