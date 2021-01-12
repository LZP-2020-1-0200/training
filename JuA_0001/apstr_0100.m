clear all;
close all;

rezmape='rezulc/';

faili=[
       'spektrs0001.txt';
       'spektrs0002.txt';
       'spektrs0003.txt'
       ]

mapes=[
       'mape1';
       'mape2'
       ]


[N Pvienalga]=size(faili)
[M Pvienalga]=size(mapes)


for n=1:N
  h=figure(n)
  clear rez
  for m=1:M
    nosaukums=[mapes(m,:) '/' faili(n,:)]
    indata=load("-ascii",nosaukums);
    x=indata(:,1);
    y=indata(:,2);
    plot(x,y);
    hold on;
    if m==1
      rez=[x y]
    else
      rez=[rez y]
    endif
  endfor
  
  izejas_bilde=[rezmape strrep(faili(n,:),".txt",".png")]
  saveas(h, izejas_bilde);
  
  izejas_dati=[rezmape strrep(faili(n,:),".txt",".dat")]
  save ("-ascii", izejas_dati, "rez");
  
endfor