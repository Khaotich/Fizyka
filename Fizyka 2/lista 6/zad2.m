clf;
clear all;
hold on;

#dane
q1 = 1 * 10^(-6);
w1 = [1, 0 , 0];

q2 = (-2) * 10^(-6);
w2 = [0, 1, 0];

q3 = (3.2) * 10^(-6);
w3 = [0, 0, 1];

F12 = coulomb(q1, w1(1), w1(2), w1(3), q2, w2(1), w2(2), w2(3)) .* -1;
F13 = coulomb(q1, w1(1), w1(2), w1(3), q3, w3(1), w3(2), w3(3)) .* -1;
Fw = F12 + F13;
Fw_ = sqrt(Fw(1)^2 + Fw(2)^2 + Fw(3)^2);

#wykresy
scatter3(w1(1), w1(2), w1(3));
scatter3(w2(1), w2(2), w2(3));
scatter3(w3(1), w3(2), w3(3));

quiver3(w1(1), w1(2), w1(3), F12(1), F12(2), F12(3), 'AutoScale','on', 'AutoScaleFactor', 65);
quiver3(w1(1), w1(2), w1(3), F13(1), F13(2), F13(3), 'AutoScale','on', 'AutoScaleFactor', 65);
quiver3(w1(1), w1(2), w1(3), Fw(1), Fw(2), Fw(3), 'AutoScale','on', 'AutoScaleFactor', 65);

text(1.7, 0.55, strcat('Fw =', num2str(Fw_), ' [N]'));

legend('Q1', 'Q2', 'Q3', 'F12', 'F13', 'Fw');

hold off;