% D³ugosc wektora
% Funkcja, która oblicza d³ugosc zadanego wektora
% (wektor kolumnowy lub rzedowy).
function mag = wektorDlug(wektor)
  [m,n]= size(wektor);
  if (m~=1)&&(n~=1)
    mag = 0;
    disp('B³ad - niew³asciwy rozmiar wektora');
  else
    mag = sqrt(sum(wektor.^2));
end;