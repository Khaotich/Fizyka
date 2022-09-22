%Funkcja rysuj¹ca okr¹g o zadanym promieniu i œrodku podanych jako agrumenty 
%funkcji

function okrag(r, x0, y0, z0, color='r')
  t = linspace(0, 2*pi, 100);
  x = x0 + r.*cos(t);
  y = y0 + r.*sin(t);
  z = z0 + r.*sin(t); 
  plot3(x, y, z, color);
endfunction