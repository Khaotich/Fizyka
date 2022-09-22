
function waveanimation
N = 1000;

A = 2.0;
A1 = 3.0;
A2 = 4.0;
k = 1.5;
omega = 10;
epsilon = 0.5;

x = linspace(0,20,N);
 
for i=1:200
    t = i*0.01;
    
    %1
    subplot(5,1,1);
    y1 = A*sin(k*x - omega*t);
    p1 = plot(x,y1,'-');
    set(p1,'XData',x,'YData',y1);
    axis([0 20 -10 10]);

    %2
    subplot(5,1,2);
    y2 = A*sin(k*x - omega*t) + A*sin(k*x + omega*t);
    p2 = plot(x,y2,'-');
    set(p2,'XData',x,'YData',y2);
    axis([0 20 -10 10]);
    
    %3
    subplot(5,1,3);
    y3 = A1*sin(k*x - omega*t) + A2*sin(k*x + omega*t);
    p3 = plot(x,y3,'-');
    set(p3,'XData',x,'YData',y3);
    axis([0 20 -10 10]);
    
    %4
    subplot(5,1,4);
    y4 = A*sin(k*x - omega*t) - A*sin(k*x + omega*t);
    p4 = plot(x,y4,'-');
    set(p4,'XData',x,'YData',y4);
    axis([0 20 -10 10]);
    
    %5
    subplot(5,1,5);
    y5 = A*sin(k*x - omega*t) + A*sin(k*x + (omega + epsilon)*t);
    p5 = plot(x,y5,'-');
    set(p5,'XData',x,'YData',y5);
    axis([0 20 -10 10]);
    
    drawnow();
end