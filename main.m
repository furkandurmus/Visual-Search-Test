%create an instance from DrawClass to use attributes and methods
draw_object = DrawClass();


%create figure
h = figure;
h.WindowState = 'maximized';

set(gca,'visible','off')

%set the trial number for pop out and conjunction tests separately
trial_number = 80;

%create 3 X trial number matrix to save each trials output to matrix. 3
%stands for the different set numbers [8, 16, 32] etc.
pop_out_results_poz = NaN(3,trial_number);
pop_out_results_neg = NaN(3,trial_number);
conj_results_poz = NaN(3,trial_number);
conj_results_neg = NaN(3,trial_number);

index_pop = 0;
index_conj = 0;



% for each set it will display figures
    for setSize =[8, 16, 32, 64]
    index_pop = index_pop + 1;
    index_conj = index_conj + 1;
    for i = 1:trial_number
        
        %target validation decides if the target will be pop up or not for
        %this trial.
        target_validation = randi([0 1], 1);
        
        %timing started
        tic

        %call pop put method from DrawClass.
        draw_object.create_pop_out_figure(setSize, target_validation)
        pause
        %get the key from user
        key_input = get(h, 'CurrentCharacter');   
        time_pop = toc;
        %check if user correctly decided or not. If yes, add it to results.
        if target_validation == 1 && key_input == "p"
            pop_out_results_poz(index_pop, i) = time_pop;
        elseif target_validation == 0 && key_input == "q"
            pop_out_results_neg(index_pop, i) = time_pop;
            
        end
        hold off
    end
    
    for j = 1:trial_number
        
        
        target_validation = randi([0 1], 1);
        tic
        draw_object.create_conjunction_figure(setSize, target_validation)
        pause
        key_input = get(h, 'CurrentCharacter');

        time_conj = toc;
        if target_validation == 1 && key_input == "p"
            conj_results_poz(index_conj, j) = time_conj;
        elseif target_validation == 0 && key_input == "q"
            conj_results_neg(index_conj, j) = time_conj;
    
        end
        hold off
    end
    
    end

close(h)


%save each data in csv file
writematrix(conj_results_neg, 'conj_results_neg.csv');
writematrix(conj_results_poz, 'conj_results_poz.csv');
writematrix(pop_out_results_neg, 'pop_out_results_neg.csv');
writematrix(pop_out_results_poz, 'pop_out_results_poz.csv');







