%Karol Pichurski Matlab Lista 10 Zadanie 2
%skrypt wyliczaj¹cy wyd³u¿enie 3 mostów w zale¿noœci od wprowadzonej
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
    disp('1. Policzenie wyd³u¿enia mostów');
    disp('2. Zakoñczenie programu');
    option = input('Wybierz opcjê: ');
    
    if option == 1
        t_k = input('Proszê wprowadziæ temperaturê koñcow¹ z zakresu <-40,60> stopni Celsjusza: ');
        if isnumeric(t_k) && t_k > -40 && t_k < 60
           
           delta_t =  t_k - 20;
           delta_L1 = L1*delta_t * d_stal;
           delta_L2 = L2*delta_t * d_stal;
           delta_L3 = L3*delta_t * d_stal;
           
           disp(' ');
           disp(strcat('Most Solidarnoœci w P³ocku o d³ugoœci 375 m wyd³u¿y siê o', num2str(delta_L1), '[m]'));
           disp(strcat('Most Krymski o d³ugoœci 16900 m wyd³u¿y siê o', num2str(delta_L2), '[m]'));
           disp(strcat('Wielki Most Danyang-Kunshan o d³ugoœci 164800 m wyd³u¿y siê o', num2str(delta_L3), '[m]'));
        else
            disp('Podano z³¹ wartoœæ!!!');
        end
    elseif option == 2
        work = false;
    else
        disp('Wybrano z³¹ opcjê!!!');
   end
end