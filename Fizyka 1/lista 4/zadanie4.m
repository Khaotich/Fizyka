a = 6;
b = 12;
c = 9;
kat = pi/3;

a_w = [6,0]
b_w = [cos(kat)*b,sin(kat)*b]
c_w = [cos(kat)*c,sin(kat)*c*-1]

disp('A+B: '); disp(a_w+b_w);
disp('A-B: '); disp(a_w-b_w);
disp('B-A: '); disp(b_w-a_w);
disp('A+B+C: '); disp(a_w+b_w+c_w);
disp('A+B-C: '); disp(a_w+b_w-c_w);

subplot(2,3,1);
quiver(0,0,a_w(1),a_w(2),1);
hold on;
quiver(0,0,b_w(1),b_w(2),1);
quiver(0,0,c_w(1),c_w(2),1);
title('Wektory A,B,C');

subplot(2,3,2);
quiver(0,0,a_w(1)+b_w(1),a_w(2)+b_w(2),1);
title('A+B');

subplot(2,3,3);
quiver(0,0,a_w(1)-b_w(1),a_w(2)-b_w(2),1);
title('A-B');

subplot(2,3,4);
quiver(0,0,b_w(1)-a_w(1),b_w(2)-a_w(2),1);
title('B-A');

subplot(2,3,5);
quiver(0,0,b_w(1)+a_w(1)+c_w(1),b_w(2)+a_w(2)+c_w(2),1);
title('A+B+C');

subplot(2,3,6);
quiver(0,0,b_w(1)+a_w(1)-c_w(1),b_w(2)+a_w(2)-c_w(2),1);
title('A+B-C');