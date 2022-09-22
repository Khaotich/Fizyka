%Karol Pichurski Matlab Lista 10 Zadanie 2
%skrypt wyliczaj�cy wyd�u�enie 3 most�w w zale�no�ci od wprowadzonej
%temperatury koncowej

clear;

%dane
L1 = 375;
L2 = 16900;
L3 = 164800;
d_stal = 0.12 * 10^-4;

work = true;
while work
    
    disp('  ');
    disp('Menu');
    disp('-----------------');
    disp('1. Policzenie wyd�u�enia most�w');
    disp('2. Zako�czenie programu');
    option = input('Wybierz opcj�: ');
    
    if option == 1
        t_k = input('Prosz� wprowadzi� temperatur� ko�cow� z zakresu <-40,60> stopni Celsjusza: ');
        if isnumeric(t_k) && t_k > -40 && t_k < 60
           
           delta_t =  t_k - 20;
           delta_L1 = L1*delta_t * d_stal;
           delta_L2 = L2*delta_t * d_stal;
           delta_L3 = L3*delta_t * d_stal;
           
           disp(' ');
           disp(strcat('Most Solidarno�ci w P�ocku o d�ugo�ci 375 m wyd�u�y si� o', num2str(delta_L1), '[m]'));
           disp(strcat('Most Krymski o d�ugo�ci 16900 m wyd�u�y si� o', num2str(delta_L2), '[m]'));
           disp(strcat('Wielki Most Danyang-Kunshan o d�ugo�ci 164800 m wyd�u�y si� o', num2str(delta_L3), '[m]'));
        else
            disp('Podano z�� warto��!!!');
        end
    elseif option == 2
        work = false;
    else
        disp('Wybrano z�� opcj�!!!');
   end
end