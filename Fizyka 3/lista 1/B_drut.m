%Funkcja licz¹ca indukcjê magnetyczn¹ dla skoñczonego przewodnika o
%d³ugoœci l przez który p³ynie pr¹d o natê¿eniu I w punkcie P

%I natê¿enie
%d odleg³oœæ przewodnika od punktu P
%B indukcja 

function B = B_drut(I, d, kat1, kat2)
    ud = 12.57 * 10^-7; %przenikalnoœæ pró¿ni 
    B = (ud*I)/(4*pi*d) * (sin(kat2) - sin(kat1));
end