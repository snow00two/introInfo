prologues := 3;
verbatimtex
%&latex
\documentclass{article}
\usepackage{verbatim}
\usepackage{latexsym}
\usepackage{amssymb}
\usepackage{amsmath}
\begin{document}
etex;

numeric a, b;
a=10pt;
b=6pt;

beginfig(1);
   z0=(3a,3a);
   z1=z0-(3a,0);
   z2=z0+(7a,0);
   draw z1--z2; %line \ell
   label.top(btex $\ell$ etex,z2); 
   z5=z0+(7a*cosd(60), 7a*sind(60));
   z6=z0-(3a*cosd(60), 3a*sind(60));
   draw z5--z6;%line m
   label.top(btex $m$ etex,z5); 

   for j=-2 upto 10:             
      z[100+j]=z0+6a*(cosd(10j),sind(10j));
   endfor;

   draw 
      for i=-2 upto  9:
         z[100+i]..
      endfor
      z110 dashed evenly;

   z150=whatever[z0,z2]=whatever[z98,z102];
   z160=whatever[z0,z5]=whatever[z102,z110];
   z151=z150-(b,0);
   z152=z151-(0,b);
   z153=z152+(b,0);
   z161=z160-(b*cosd(60),b*sind(60));
   z162=z161+(b*cosd(150),b*sind(150));
   z163=z162+(b*cosd(60),b*sind(60));
   
   draw z98--z102--z110;
   draw z151--z152--z153;
   draw z161--z162--z163;
   
   label.bot(btex $\mathbf 0$ etex,z0);
   label.bot(btex $\mathbf x$ etex,z98);

   pickup pencircle scaled 1pt;
   drawarrow z0--z98;
   drawarrow z0--z102;
   drawarrow z0--z110;
endfig;

beginfig(2);
   def voro(expr p, q, r) = 
      begingroup
          save a, b, c, u, v, w,  e, f, g, h; 
          pair a, b, c, u, v, w;
          numeric e, f, g, h;
          a = 0.5[q,r];
          b = 0.5[r,p];
          c = 0.5[p,q];
          (e,f)= r-q ;
          (g,h) = p- r;
          u = (f, -e);
          v = (h, -g);
          w = whatever[a + u, a - u] = whatever[b + v, b - v] ;
          draw a--w--b;
          draw w--c;
      endgroup
   enddef;

   z0=(-5a,-5a);
   for i=1 upto 6:
      for j=1 upto 6:
      	z[10i +j]= z0 + (5i*a, 0) +5j*(a/2, sqrt(3)*a/2) 
	+(a*cosd(30(i+j)+i*j/2), a*sind(30(i+j) + i*j/2) );
      endfor;
   endfor;
   
   z100 = z32+ (a,1.4a);
   dotlabel(btex etex, z100);
   draw z100--z32;
   draw z100--z33 dashed evenly;
   draw z100--z23 dashed evenly;
   draw z100--z42 dashed evenly;

   for i=1 upto 6:
      for j=1 upto 4:
      	dotlabel(btex etex, z[10i +j]);
      endfor;
   endfor;
   for i=1 upto 5:
      for j=1 upto 3:
      	voro(z[10i +j], z[10(i+1)+j], z[10i +j+1]);
      	voro(z[10i +j+1], z[10(i+1) +j+1], z[10(i+1)+j]);
      endfor;
   endfor; 
endfig;

verbatimtex
\end{document}
etex;
end
