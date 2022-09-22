%zadanie 2

m = 0.5;
c = -2;
x = [0,1.5,3,4,5,7,9,10];
y =[0,0,0,0,0,0,0,0];

for i = 1:8
  y(i)=m*x(i)+c;
endfor

plot(x,y)