function x = silnia(i)
  result = [];
  len = length(i);
  
  for q = 1:len
    if(i(q) == 0 || i(q) == 1)
      z = 1;
    else
      z = 1;
      for n = 2:i(q)
        z = z*n;
      endfor
    endif
    result = [result, z];
  endfor
  x = result;
endfunction