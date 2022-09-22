%Karol Pichurski Matlab Lista 9 Zadanie 1
%Funkcja licz¹ca bieg promienia padaj¹cego na p³aszczyznê pod nachyleniem 
%u, na wysokoœci y, biegn¹cego z oœrodka o wspó³czynniku za³amania 
%n do powietrza

function result = ray(y, u, n, x)
 t = asin(n * sin(atan(u)));
 result = (x-2) * tan(t) + y;
end