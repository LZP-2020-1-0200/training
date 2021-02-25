clear all;
close all;
spektrs = dlmread("14024spol_40x_air.txt",
                   '\t',[18,0,3664,13]);

nm=spektrs(:,1);
intens=spektrs(:,2);

plot(nm,intens)
