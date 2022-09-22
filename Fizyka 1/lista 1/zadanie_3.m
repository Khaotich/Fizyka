%zadanie 3
t = [1,2,3,4,5,6,7,8,9,10];

%a
for i = 1:10
   x = t(i)*sin(t(i))
endfor

disp("")
%b
for i = 1:10
   y = t(i)-1/t(i)+1
endfor

disp("")
%c
for i = 1:10
   z = sin(t(i)^2)/t(i)^2
endfor