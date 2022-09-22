%Funkcja licz�ca indukcj� magnetyczn� dla sko�czonego przewodnika o
%d�ugo�ci l przez kt�ry p�ynie pr�d o nat�eniu I w punkcie P

%I nat�enie
%d odleg�o�� przewodnika od punktu P
%B indukcja 

function B = B_drut(I, d, kat1, kat2)
    ud = 12.57 * 10^-7; %przenikalno�� pr�ni 
    B = (ud*I)/(4*pi*d) * (sin(kat2) - sin(kat1));
end