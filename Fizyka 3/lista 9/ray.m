%Karol Pichurski Matlab Lista 9 Zadanie 1
%Funkcja licz�ca bieg promienia padaj�cego na p�aszczyzn� pod nachyleniem 
%u, na wysoko�ci y, biegn�cego z o�rodka o wsp�czynniku za�amania 
%n do powietrza

function result = ray(y, u, n, x)
 t = asin(n * sin(atan(u)));
 result = (x-2) * tan(t) + y;
end