% ładunek poruszający się w polu magnetycznym pod kątem
clear all;
close all;

%dane
Qe = -1.602176487*10^(-19);
me = 9.103*10^(-28);
B = 0.01;
V = 10^5;

%obliczenia
R = abs(me*V / (Qe*B));
dtheta = 0.03 * pi;
dl = R * dtheta;
l = -1.5*R : dl : 0;

title('Elektron w jednorodnym polu magnetycznym');
text(100, 100, 'B', 'FontSize', 12);

%sekwencja ruchu przed wejściem do pola
for k = 1 : length(l)
    draw_3d(dl, R);
  
    plot3(l(k), -R, 0, 'ro', 'MarkerFaceColor', 'r');
    scale = 0.25 * R / V;
    quiver3(l(k), -R, 0, real(V), imag(V), 0, scale, 'Color', 'm');

    axis equal;
    ylim([-1.5*R 1.5*R]);
    xlim([-1.5*R 1.5*R]);
    axis off;

    frame = getframe;
    
end

theta = -pi/2 : dtheta : pi/2;

%sekwencja ruchu w polu
for k = 1 : length(theta)
    draw_3d(dl, R);

    pos = R * exp(1i * theta(k));
    Vv = V * exp(1i * (-pi / 2 + theta(k)));
    x = real(pos);
    y = imag(pos);
    z = 0.1 / length(theta) * k;
    plot3(x, y, z, 'ro', 'MarkerFaceColor', 'r');

    scale = 0.25 * R / V;
    quiver3(x, y, z, -real(Vv), -imag(Vv), 0, scale, 'Color', 'm');
    quiver3(x, y, z, -0.2*x, -0.2*y, 0, 0, 'Color', 'k');

    axis equal;
    ylim([-1.5*R 1.5*R]);
    xlim([-1.5*R 1.5*R]);
    axis off;

    frame = getframe;
  
end

%sekwencja ruchu po wyjściu z pola
for k = 1 : length(l)
    draw_3d(dl, R);
    
    plot3(l(length(l) + 1 - k), R, 0.1, 'ro', 'MarkerFaceColor', 'r');  
    scale = 0.25 * R / V;
    quiver3(l(length(l) + 1 - k), R, 0.1, -real(V), imag(V), 0, scale, 'Color', 'm');
    
    axis equal;
    ylim([-1.5*R 1.5*R]); 
    xlim([-1.5*R 1.5*R]);
    axis off;
    
    frame = getframe;

end