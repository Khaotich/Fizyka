%Karol Pichurski Matlab Lista 9 Zadanie 2
%funkcja wyliczaj�ca bieg promienia po 
%za�amaniu na sferycznej powierzchni
%parametry funkcji: wysoko�� y na jakiej promie�
%pada na krzywizn� soczewki, promie� powierzchni r,
%grubo�� soczewki d, wsp�czynnik za�amania soczewki
%n oraz krok, z jakim b�dzie rysowany promie� dx

function [x_, y_, j] = sphere(y, r, d, n, step)
 t = r - sqrt(r^2 - y^2);
 y_ = t : step : d;
 s = y/r;
 j = tan(asin(s/n) - asin(s));
 x_ = j*(y_-t) + y;
end