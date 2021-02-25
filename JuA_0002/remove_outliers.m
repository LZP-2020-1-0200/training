function [nm_out,intens_out]=remove_outliers(nm_in,intens_in)
  w=5;
  k=[-w:w];
  h1=exp(-10*k.*k/w/w);
  h=h1/sum(h1);
  [L,W]=size(intens_in);
  filt=conv(intens_in,h,"same");
  diff=intens_in-filt;
  d2=diff.^2;
  max2=max(d2);
  m=1;
  for n=1:L
    if(d2(n)<max2)
      nm_out(m,1)=nm_in(n);
      intens_out(m,1)=intens_in(n);
      m++;
    endif
  endfor
endfunction
