prologues := 3;
verbatimtex
%&latex
%\documentclass[uplatex]{jsarticle}
\documentclass{article}
\usepackage{verbatim}
\usepackage{latexsym}
\usepackage{amssymb}
\usepackage{amsmath}
\begin{document}
etex;

numeric a;
a=13pt;

beginfig(1);
   for i=0 upto 9: %x-axis
   for j=0 upto 5: %y-axis
      z[i*10+j]=(i*a,(5-j)*a);
   endfor;
   endfor;
   
   drawarrow z1--z81;
   drawarrow z10--z15;
   drawarrow z31{down}..{left}z13;
   
   label.ulft(btex $0$ etex,z11);
   label.rt(btex $x$ etex,z81);
   label.bot(btex $y$ etex,z15);
endfig;

beginfig(2);
   for i=0 upto 9: %x-axis
      for j=0 upto 6: %y-axis
         z[i*10+j]=(i*a,(5-j)*a);
      endfor;
   endfor;
   
   for i=1 upto 8: %x-axis
      for j=1 upto 5: %y-axis
         dotlabel( btex   etex,z[i*10+j]);
      endfor;
   endfor;
   
   
   draw z0--z90--z96--z6-- cycle;
   for  j=1 upto 2:
   	drawarrow z[10+j]--z[80+j];
   endfor;
   drawarrow z[13]--z[53];
endfig;

numeric b,c ;
b=2.5a;
c= 2b/sqrt(3);

beginfig(3);
   %left fugure
   z0 = (0,a);
   z1= z0 + (4b,0);
   z2 = z0 + (2b,3c);
   z3 = z0 + (2b,c);
   draw z0--z1--z2-- cycle ;
   dotlabel.bot(btex etex , z3);
   
   z5= z0+ (5b,0);
   z6= z5 + (4b,0);
   z7 = z5 + (2b,3c);
   draw z5--z6--z7-- cycle ;
   z8 = z5 + (2b,c);
   dotlabel.bot(btex etex , z8);
   
   z10 = z3 - (2b,0);
   z11 = z3 + (2b,0);
   z12 = z3 - (0,c+a);
   z13 = z3 + (0,2c+a);
   drawarrow z10--z11;
   drawarrow z12--z13;
   label.rt(btex $x$ etex,z11);
   label.top(btex $y$ etex,z13);
   
   z20 = z8 + (b,c/2);
   z21 = z8 + (-b,c/2);
   z22 = z8 - ( 0, c);
   draw z20--z21 dashed evenly;
   draw z21--z22 dashed evenly;
   
   z30 = z8  +  (0,c);
   z31 = z30 + (0.2a,0);
   z32 = z8 + (0.2a,0);
   z40 = z5  +  (b,c/2);
   z41 = z40 +0.2a* (1/2, -sqrt(3)/2); 
   z42 = z8 +0.2a* (1/2, -sqrt(3)/2); 
   
   for i = 0 upto 6:
   	z[50+i] = z8 + a*( cosd(90 + 20i), sind(90 + 20i) );
   endfor
   drawarrow  
   	for i = 0 upto 5:
   		z[50+i]--
   	endfor
   	z56 dashed evenly;
   
   pickup pencircle scaled 1pt;
   drawarrow z8--z30;
   drawarrow z31--z32 withcolor red;
   drawarrow z8--z40;
   drawarrow z41--z42 withcolor red;
endfig;

verbatimtex
\end{document}
etex;
end