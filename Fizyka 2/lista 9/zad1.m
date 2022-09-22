#skrypt rysuj¹cy rozk³ad natê¿eñ pól elektrycznyvh wokó³ odcinków

#dane
Q = 3 * 10^-5;
a = 10;

#obliczenia
rho = Q/a;
dl = 0.001*a;

#wykres poziomy
xline = -a/2 : dl : a/2;
yline = zeros (1,length (xline));

v = -0.825*a: 0.15*a : 0.975*a;
u = -0.525*a: 0.15*a : 0.675*a;

[x,y] = meshgrid(v,u);
[M,N] = size(x);

for i = 1 : M
  for j = 1 : N
    for t = 1 : length(xline)
      r(i,j,t,:) = [x(i,j) - xline(t) y(i,j) - yline(t)];
      rabs(i,j,t) = wektorDlug(r(i,j,t,:));
      runit(i,j,t,:) = r(i,j,t,:)/rabs(i,j,t);
      E(i,j,t,:) = rho*dl*runit(i,j,t,:)/(4*pi*eps*rabs(i,j,t)^2);
    end;
    Etotx(i,j) = sum(E(i,j,:,1));
    Etoty(i,j) = sum(E(i,j,:,2));
  end;
end;

#wykres
subplot(1,3,1);

line([-a/2 a/2],[0 0], 'Color','r');

hold on;
quiver(v,u,Etotx,Etoty);
hold off;

title('Natezenie pola elektrycznego wokó³ odcinka poziomego');
xlabel('x[m]');
ylabel('y[m]');

####

#wykres pionowy
yline = -a/2 : dl : a/2;
xline = zeros (1,length (yline));

v = -0.825*a: 0.15*a : 0.975*a;
u = -0.525*a: 0.15*a : 0.675*a;

[x,y] = meshgrid(v,u);
[M,N] = size(x);

for i = 1 : M
  for j = 1 : N
    for t = 1 : length(xline)
      r(i,j,t,:) = [x(i,j) - xline(t) y(i,j) - yline(t)];
      rabs(i,j,t) = wektorDlug(r(i,j,t,:));
      runit(i,j,t,:) = r(i,j,t,:)/rabs(i,j,t);
      E(i,j,t,:) = rho*dl*runit(i,j,t,:)/(4*pi*eps*rabs(i,j,t)^2);
    end;
    Etotx(i,j) = sum(E(i,j,:,1));
    Etoty(i,j) = sum(E(i,j,:,2));
  end;
end;

#wykres
subplot(1,3,2);

line([0 0],[a/2 -a/2], 'Color','r');

hold on;
quiver(v,u,Etotx,Etoty);
hold off;

title('Natezenie pola elektrycznego wokó³ odcinka pionowego');
xlabel('x[m]');
ylabel('y[m]');

####

#wykres pod k¹tem
xline = -a/2 : dl : a/2;
#yline = zeros (1,length (xline));
yline = xline;

v = -0.825*a: 0.15*a : 0.975*a;
u = -0.525*a: 0.15*a : 0.675*a;

[x,y] = meshgrid(v,u);
[M,N] = size(x);

for i = 1 : M
  for j = 1 : N
    for t = 1 : length(xline)
      r(i,j,t,:) = [x(i,j) - xline(t) y(i,j) - yline(t)];
      rabs(i,j,t) = wektorDlug(r(i,j,t,:));
      runit(i,j,t,:) = r(i,j,t,:)/rabs(i,j,t);
      E(i,j,t,:) = rho*dl*runit(i,j,t,:)/(4*pi*eps*rabs(i,j,t)^2);
    end;
    Etotx(i,j) = sum(E(i,j,:,1));
    Etoty(i,j) = sum(E(i,j,:,2));
  end;
end;

#wykres
subplot(1,3,3);

line([-a/2 a/2],[-a/2 a/2], 'Color','r');

hold on;
quiver(v,u,Etotx,Etoty);
hold off;

title('Natezenie pola elektrycznego wokó³ odcinka pod k¹tem 45');
xlabel('x[m]');
ylabel('y[m]');