function draw_3d(dl, R)
  hold off
  [x, y] = meshgrid(0 : 10*dl : 1.5*R, -1.5*R : 10*dl : 1.5*R);
  [M, N] = size(x);
  for k = 1:M
    for t = 1:N
      for v = 1:N
        plot3(x(k, t), y(k, t), y(k, t), 'bx');
        hold on
      end
    end
  end
  title('Elektron w jednorodnym polu magnetycznym');
  text(x(M), y(N), 'B', 'FontSize', 12);
end
    