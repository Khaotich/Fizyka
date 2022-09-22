%SIN_SERIES: funkcja obliczaj�ca wartosc sin(x) z rozwiniecia w szereg Taylora

function y = sin_series(x, n)
  format long;
  if(nargin == 1)
    n = 10;
  endif
  
  if(n > 0 && int64(n) == n)
    result = [];
    n = 1:n;
    for i = 1:length(x)
      z = sum(((-1).^(n-1)).*(x(i).^((2.*n)-1))./silnia(2.*n-1));
      result = [result, z];
    endfor
    y = result;
    err = abs(result-sin(x))./sin(x).*100;
    disp("B��dy: "); disp(err);
  else
    y = "B��dne wprowadzenie n!";
  endif
  
endfunction 