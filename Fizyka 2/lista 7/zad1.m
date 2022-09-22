clear all;
hold on;

#skrypt obliczaj�cy si�y dzia�aj�ce na �adunek umieszczony na szczycie czworo�cianu o boku 0,1 m przez �adunki na innych wierzcho�kach

#dane
Q = 1 * 10^(-9);
a = 0.1;

#wsp�rz�dne �adunk�w wyliczone na papierze
w1 = [0, 0, 0];
w2 = [0.05, -0.0866, 0];
w3 = [-0.05, -0.0866, 0];
w4 = [0, -0.05715, 0.08165];

#wektory wsp�rz�dnych �adunk�w
xw = [w1(1),w2(1),w3(1),w4(1)];
yw = [w1(2),w2(2),w3(2),w4(2)];
zw = [w1(3),w2(3),w3(3),w4(3)];

#wektory si�
F41 = coulomb(Q, w4(1), w4(2), w4(3), Q, w1(1), w1(2), w1(3))*-1;
F42 = coulomb(Q, w4(1), w4(2), w4(3), Q, w2(1), w2(2), w2(3))*-1;
F43 = coulomb(Q, w4(1), w4(2), w4(3), Q, w3(1), w3(2), w3(3))*-1;
FW  = F41 + F42 + F43;

#warto�ci si�
F41_V = sqrt(F41(1)^2 + F41(2)^2 + F41(3)^2);
F42_V = sqrt(F42(1)^2 + F42(2)^2 + F42(3)^2);
F43_V = sqrt(F43(1)^2 + F43(2)^2 + F43(3)^2);
FW_V  = sqrt(FW(1)^2 + FW(2)^2 + FW(3)^2);

#wykres
#wykres nale�y lekko obr�cic poniewa� pocz�tkowy widok jest od g�ry

#�adunki
plot3(xw, yw, zw, 'o');

#po��czenia �adunk�w
plot3([w1(1),w2(1)],[w1(2),w2(2)], [w1(3),w2(3)],'--', 'color', 'blue');
plot3([w1(1),w3(1)],[w1(2),w3(2)], [w1(3),w3(3)],'--', 'color', 'blue');
plot3([w1(1),w4(1)],[w1(2),w4(2)], [w1(3),w4(3)],'--', 'color', 'blue');
plot3([w2(1),w3(1)],[w2(2),w3(2)], [w2(3),w3(3)],'--', 'color', 'blue');
plot3([w2(1),w4(1)],[w2(2),w4(2)], [w2(3),w4(3)],'--', 'color', 'blue');
plot3([w3(1),w4(1)],[w3(2),w4(2)], [w3(3),w4(3)],'--', 'color', 'blue');

#wektory si�
quiver3(w4(1), w4(2), w4(3), F41(1), F41(2), F41(3), 'AutoScale','on', 'AutoScaleFactor', 170000);
quiver3(w4(1), w4(2), w4(3), F42(1), F42(2), F42(3), 'AutoScale','on', 'AutoScaleFactor', 170000);
quiver3(w4(1), w4(2), w4(3), F43(1), F43(2), F43(3), 'AutoScale','on', 'AutoScaleFactor', 170000);
quiver3(w4(1), w4(2), w4(3), FW(1), FW(2), FW(3), 'color', 'red', 'AutoScale','on', 'AutoScaleFactor', 170000);

xlabel('X');
ylabel('Y');
zlabel('Z');

#dane si� wy�wietlane w konsoli
disp(strcat('F41 =', num2str(F41_V), ' [N]'));
disp(strcat('F42 =', num2str(F42_V), ' [N]'));
disp(strcat('F43 =', num2str(F43_V), ' [N]'));
disp(strcat('FW =', num2str(FW_V), ' [N]'));

hold off;