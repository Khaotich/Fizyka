#funkcja Coulomb przyjmuje warto�c 1 �adunku i jego 3 wsp�rz�dne x,y,z
#oraz 2 warto�c �adunku i jego 3 wsp�rz�dne x,y,z po czym liczy wektor si�y 
#jak� 2 �adunek dzia�a na 1

function f = coulomb(q1, x1, y1, z1, q2, x2, y2, z2)
  r =  sqrt((x2 - x1)^2 + (y2 - y1)^2 +(z2 - z1)^2);
  rw = [x2 - x1, y2 - y1, z2 - z1];
  k = 9 * 10^9;
  f = ((k * q1 * q2) / (r^2)) .* rw;
endfunction