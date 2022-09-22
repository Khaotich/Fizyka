N = 20;

g = 9.81;
v = 10;
kat = pi/6;
Z = ((v^2)*sin(kat*2))/g;
x = linspace(0,Z,N);
y = (x.*tan(kat))-(g*x.^2/(2*v^2*cos(kat)^2));

t = (2*v*sin(kat))/g
tx = linspace(0,t,N);
vy = v*sin(kat)-g.*tx;

for i = 1:N
  plot(x,y);
  axis([-1 10 0 1.5]);
  title("Rzut Ukoœny");
  ylabel("Wysokoœæ [m]");
  xlabel("Zasiêg [m]");
  hold on;
  quiver(x(i),y(i),v/N,0); #vx
  quiver(x(i),y(i),0,vy(i)/N,1); #vy
  quiver(x(i),y(i),v/N,vy(i)/N,1); #v
  pause(0.001);
  hold off;
end