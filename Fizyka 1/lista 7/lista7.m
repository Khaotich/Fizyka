#obliczenia
v0 = 10;
kat = deg2rad(30);
g = 9.81;
vx = v0 * cos(kat);
vy0 = v0 * sin(kat);
zasieg = (v0^2*sin(2*kat))/g;
x = linspace(0,zasieg,10);
y = (x.*tan(kat))-(g*x.^2/(2*v0^2*cos(kat)^2));
czas = (2*vy0)/g;
t = linspace(0,czas,10);
vy = v0*sin(kat)-g.*t;
v = sqrt(vx^2+vy.^2);

#A
subplot(3,1,1);
plot(x,y);
hold on;
#quiver(x,y,vx/20,0,1);
#quiver(x,y,0,vy/20,1);
#quiver(x,y,vx/20,vy/20,1);

xlabel('x [m]');
ylabel('y [m]');
title('a');
legend('x(t)','v_x(t)','v_y(t)','v(t)');
hold off;

#B
subplot(3,1,2);
plot(x,y);
hold on;
%quiver(x,y,vx/20,vy/20,1);
text(x,y,strcat(num2str(round(100.*v')./100),' m/s'));

xlabel('x [m]');
ylabel('y [m]');
title('b');
legend('x(t)', 'v(t)');
hold off;

#C
x = linspace(0,zasieg,50);
y = (x.*tan(kat))-(g*x.^2/(2*v0^2*cos(kat)^2));
t = linspace(0,czas,50);
vy = vy0 - g.*t;
v = sqrt(vx^2+vy.^2);

v_poch = sqrt((diff(x)./diff(t)).^2 + ((diff(y)./diff(t)).^2));
t = linspace(0,czas,49);

subplot(3,1,3);
plot(t,v_poch);
hold on;
t = linspace(0,czas,50);
plot(t,v);

xlabel('t [s]');
ylabel('v [m/s]');
title('c');
legend('v = sqrt((dx/dt)^2 + (dy/dt)^2)', 'v = sqrt(vx^2+vy^2)');
hold off;