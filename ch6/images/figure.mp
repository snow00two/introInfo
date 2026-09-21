prologues := 3;
verbatimtex
\documentclass[uplatex]{jsarticle}
% from command line 
%>upmpost -tex=uplatex figure.mp
%\documentclass{article} % In English mode
\usepackage{verbatim}
\usepackage{latexsym}
\usepackage{amssymb}
\usepackage{amsmath}
\begin{document}
etex;
numeric a, h, w;
a= 6pt;
h = 2a;
w = 15a; 

beginfig(1);
   z0 = (0,0);
   for j= 0 upto 10:
      z[11 *1+j]= z0 + (j*w/10, j*h);
      z[11*2 +j]= z0 + (w, j*h);
      z[11*3 +j]= z0 + (2w - j*w/10, j*h);
   endfor
   draw z[11*1]--z[11*3]--z[11*2 +10]-- cycle;
   for j = 1, 2, 3:
      draw z[11*1+ 2j]--z[11*3+ 2j];
   endfor
   
   label(btex $\text{Data(データ)}$ etex, z[11*2 +1]);
   label(btex $\text{Information(情報)}$ etex, z[11*2 +3]);
   label(btex $\text{Knowledge(知識)}$ etex, z[11*2 +5]);
   label(btex $\text{Wisdom}$ etex, z[11*2 +7]);
   label(btex $\text{(知恵)}$ etex, z[11*2 +8]);
endfig;


verbatimtex
\end{document}
etex;
end