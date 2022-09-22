% D�ugosc wektora
% Funkcja, kt�ra oblicza d�ugosc zadanego wektora
% (wektor kolumnowy lub rzedowy).
function mag = wektorDlug(wektor)
  [m,n]= size(wektor);
  if (m~=1)&&(n~=1)
    mag = 0;
    disp('B�ad - niew�asciwy rozmiar wektora');
  else
    mag = sqrt(sum(wektor.^2));
end;