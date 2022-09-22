% ładunek poruszający się w polu magnetycznym
clear all;
close all;

%inicjalizacja animacji
VideoObj = VideoWriter('animation');
open(VideoObj);

%dane
Qe = -1.602176487*10^(-19);
me = 9.103*10^(-28);
B = 0.01;
V = 10^5;

%obliczenia
R = abs(me*V / (Qe*B));
dtheta = 0.01 * pi;
dl = R * dtheta;
l = -1.5*R : dl : 0;

title('Elektron w jednorodnym polu magnetycznym');
text(100, 100, 'B', 'FontSize', 12);

%sekwencja ruchu przed wejściem do pola
for k = 1 : length(l)
    draw(dl, R);
  
    plot(l(k), -R, 'ro', 'MarkerFaceColor', 'r');
    scale = 0.25 * R / V;
    quiver(l(k), -R, real(V), -imag(V), scale, 'Color', 'm');

    axis equal;
    ylim([-1.5*R 1.5*R]);
    xlim([-1.5*R 1.5*R]);
    axis off;

    frame = getframe;
    writeVideo(VideoObj, frame);
    
end

theta = pi/2 : -dtheta : -pi/2;

%sekwencja ruchu w polu
for k = 1 : length(theta)
    draw(dl, R);

    pos = R * exp(1i * -theta(k));
    Vv = V * exp(1i * (-pi / 2 + theta(k)));
    x = real(pos);
    y = imag(pos);
    plot(x, y, 'ro', 'MarkerFaceColor', 'r');

    scale = 0.25 * R / V;
    quiver(x, y, real(Vv), -imag(Vv), scale, 'Color', 'm');
    quiver(x, y, -0.2*x, -0.2*y, 0, 'Color', 'k');

    axis equal;
    ylim([-1.5*R 1.5*R]);
    xlim([-1.5*R 1.5*R]);
    axis off;

    frame = getframe;
    writeVideo(VideoObj, frame);
  
end

%sekwencja ruchu po wyjściu z pola
for k = 1 : length(l)
    draw(dl, R);
    
    plot(l(length(l) + 1 - k), R, 'ro', 'MarkerFaceColor', 'r');  
    scale = 0.25 * R / V;
    quiver(l(length(l) + 1 - k), R, -real(V), imag(V), scale, 'Color', 'm');
    
    axis equal;
    ylim([-1.5*R 1.5*R]); 
    xlim([-1.5*R 1.5*R]);
    axis off;
    
    frame = getframe;
    writeVideo(VideoObj, frame);

end

%zamknięcie animacji
close(VideoObj);
