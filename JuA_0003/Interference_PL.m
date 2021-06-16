clear all;
close all;

eV=[1:0.01:4];

PL=0.9*exp(-(eV-3).^2/0.1);
INTERF=0.98*exp(-(eV-2).^2/1);

REZ=PL.*INTERF;

h = figure;
set (h,'paperunits','inches');
set (h,'paperposition', [0,0,[4 3]])

plot(eV,PL,eV,INTERF,eV,REZ);
legend('PL','Interference                   ','Observed');
grid on

xlabel ("E, eV")
ylabel ("I, arb.")

saveas (1, 'Interference_PL.png')
