
p = [0,0];
p1 = [0,0];
p += [5,0];
p += [0,-3];
p += [-2,0];
p += [0,1];

disp('Wsp�rz�dne x i y:  '); disp(p);

r = sqrt((p(1)-p1(1))^2+(p(2)-p1(2))^2);
disp('D�ugo�� wektora ca�kowitego przemieszczenia: '); disp(r);

quiver(p1(1),p1(2),p(1),p(2));
