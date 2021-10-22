f1 = readmatrix('C:\Users\furkan\Desktop\conj_results_neg.csv');
f1(isnan(f1))=0;

f2 = readmatrix('C:\Users\furkan\Desktop\conj_results_poz.csv');
f2(isnan(f2))=0;

f3 = readmatrix('C:\Users\furkan\Desktop\pop_out_results_neg.csv');
f3(isnan(f3))=0;

f4 = readmatrix('C:\Users\furkan\Desktop\pop_out_results_poz.csv');
f4(isnan(f4))=0;


%getting mean values of each set
conj_neg = [mean(f1(1,:)) mean(f1(2,:)) mean(f1(3,:)) mean(f1(4,:))];
conj_poz = [mean(f2(1,:)) mean(f2(2,:)) mean(f2(3,:)) mean(f2(4,:))];

pop_out_neg = [mean(f3(1,:)) mean(f3(2,:)) mean(f3(3,:)) mean(f3(4,:))];
pop_out_poz = [mean(f4(1,:)) mean(f4(2,:)) mean(f4(3,:)) mean(f4(4,:))];

%plotting the reaction times versus set sizes
figure
plot(conj_neg)
hold on
plot(conj_poz)
hold on
plot(pop_out_neg)
hold on
plot(pop_out_poz)
hold off
title('Conjunction and Pop Out Times vs. Set Sizes')
xlabel('set size') 
ylabel('reaction time')
legend('conjunction -','conjunction +', 'pop out -', 'pop out +')


% correlation coefficients of the reaction time versus set size.
R1 = corrcoef(pop_out_neg, [8 16 32 64]);
R2 = corrcoef(pop_out_poz, [8 16 32 64]);
R3 = corrcoef(conj_neg, [8 16 32 64]);
R4 = corrcoef(conj_poz, [8 16 32 64]);