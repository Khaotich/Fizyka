%Karol Pichurski Matlab Lista 9 Zadanie 3

clear;

%dane
step = 0.01; 
aperture = 5;
num_rays = 7;

n = 1.51; 
r = 20; 
d = 2; 

%obliczenia
dy = (2*aperture + 1) / num_rays;
y = -aperture : dy : aperture;
power = (n-1) / r; %lens power
f = power^-1; %paraxial focal length
zmax = floor(f+.1*f); %end of z-axis
z_front = 0 : step : d-step; %z-axis back of plane surface
z_back = d : step: zmax-step; %z-axis front of plane surface
z_optaxis = [z_front, z_back]; %total optical axis
result = zeros(length(y), length(z_optaxis));
front_lens = sqrt(r^2 - (z_front-r).^2);

 for i = 1:length(y)
     
     [ray_lens, x_lens, slope] = sphere(y(i), r, d, n, step);
     ray_air = ray(ray_lens(end), slope, n, z_back);
     x_front_air = 0 : step : x_lens(1)-step;
     ray_front_air = y(i) * ones(1, length(x_front_air));
     
     if length(ray_lens) + length(ray_air) + length(x_front_air) <= length(z_optaxis)
        result(i, :) = [ray_front_air, ray_lens, ray_air];
     else
        result(i, :) = [ray_front_air, ray_lens(1 : length(ray_lens) - 1), ray_air];
     end
     
end

%wykres
plot(z_optaxis,result', 'r');
hold on;
line([d d], [max(front_lens) -max(front_lens)], 'color','b');
plot(z_front, front_lens, 'b', z_front, -front_lens, 'b');
plot(z_optaxis, zeros(1, length(z_optaxis)), 'k--');
grid on;
title('Wykres biegu równoleg³ych promieni padaj¹cych na soczewkê');
xlabel('X');
ylabel('Y');
hold off;