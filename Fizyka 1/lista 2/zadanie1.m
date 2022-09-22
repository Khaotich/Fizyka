%zadanie 1

format long;

%Procedura dla n=11
r = 0.5;
n = 11;
wektor = linspace(0,10,n);

x = r.^n;
s = sum(x);
granica = 1/1-r;

disp("Różnica granicy i sumy wynosi dla n=11: "+(granica-s));

%Procedura dla n=51
r = 0.5;
n = 51;
wektor = linspace(0,50,n);

x = r.^n;
s = sum(x);
granica = 1/1-r;

disp("Różnica granicy i sumy wynosi dla n=51: "+(granica-s));


%Procedura dla n=101
r = 0.5;
n = 101;
wektor = linspace(0,101,n);

x = r.^n;
s = sum(x);
granica = 1/1-r;

disp("Różnica granicy i sumy wynosi dla n=101: "+(granica-s));