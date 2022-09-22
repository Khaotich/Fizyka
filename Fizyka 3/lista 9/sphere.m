%Karol Pichurski Matlab Lista 9 Zadanie 2
%funkcja wyliczaj¹ca bieg promienia po 
%za³amaniu na sferycznej powierzchni
%parametry funkcji: wysokoœæ y na jakiej promieñ
%pada na krzywiznê soczewki, promieñ powierzchni r,
%gruboœæ soczewki d, wspó³czynnik za³amania soczewki
%n oraz krok, z jakim bêdzie rysowany promieñ dx

function [x_, y_, j] = sphere(y, r, d, n, step)
 t = r - sqrt(r^2 - y^2);
 y_ = t : step : d;
 s = y/r;
 j = tan(asin(s/n) - asin(s));
 x_ = j*(y_-t) + y;
end