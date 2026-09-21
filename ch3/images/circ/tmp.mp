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

numeric a, b, c;
a = 5pt;
b = 0.8a;
c = sqrt(3)*b/2;
beginfig(1);
   z0 = (0,-7b) + (0,20b);
   z20 = z0 + (9a,0);
   z40 = z20 + (9a,0);
   z100 = z0 + (40b,0);
   z200 = z0 - (0,20b);
   z300 = z200 + (40b,0);
   for i= 0 upto 3:
      for j = 0, 1, 2:
         z[100i +20j + 1] = z[100i] + z[20j + 0] ;
         z[100i +20j + 2] = z[100i +20j + 1] +(6b,0);
         z[100i +20j + 3]= z[100i +20j + 2] + (0,6b);
         z[100i +20j + 4] =z[100i +20j + 3] -(6b,0);
         z[100i +20j + 5] = 0.5[z[100i +20j + 1], z[100i +20j + 4]];
         z[100i +20j + 6] =z[100i +20j + 5] + (-3b,0);
         z[100i +20j + 7] = 0.5[z[100i +20j + 2], z[100i +20j + 3]];
         z[100i +20j + 8] =z[100i +20j + 7]+ (3b,0); 
         z[100i +20j + 9] = 0.5[z[100i +20j + 5], z[100i +20j + 7]];
         z[100i +20j + 10] = 0.5[z[100i +20j + 5], z[100i +20j + 6]];
         z[100i +20j + 11] = 0.5[z[100i +20j + 5], z[100i +20j + 7]];
      endfor
      z[100i + 60]= z[100i +20 +4] - (4b,10b);
      for j= 0 upto 14:
         for k = 0 upto 1:
            z[100i +61 + 2j + k]= z[100i +60]  + (j*b, 2k*b);
         endfor
      endfor
      z[100i + 99 ] = z[100i + 20+9] - (0,10b);
   endfor 
   for i= 0 upto 3:
      for j = 0, 1, 2:
         draw z[100i +20j + 1]--z[100i +20j + 2]--z[100i +20j + 3]--z[100i +20j + 4]-- cycle;
         draw z[100i +20j + 5]--z[100i +20j + 6];
         draw z[100i +20j + 7]--z[100i +20j + 8]; 
      endfor
      for j = 0 upto 2:
         draw z[100i +61 + 8j + 0]--z[100i +61 + 8j+ 4 + 0]--z[100i +61 + 8j + 4 + 1]--z[100i +61 + 8(j+ 1) + 1]--z[100i +61 + 8(j+ 1) + 1]--z[100i +61 + 8(j+ 1)+ 0];
      endfor
      draw z[100i +61 + 8*3 + 0]--z[100i +61 + 8*3 + 4 + 0];
   endfor 

   drawarrow z[61 + 3]--z[61 + 2];
   label.lft(btex $101$ etex, z[0 + 6]);
   label.top(btex $1$ etex,z[ 0+ 10]);
   label.top(btex $0$ etex, z[0+ 8]); 
   label(btex $0$ etex, z[ 0 + 9]);  
   label.top(btex $0$ etex, z[20+ 8]); 
   label(btex $0$ etex, z[ 20 + 9]);  
   label.top(btex $0$ etex, z[40+ 8]); 
   label(btex $0$ etex, z[ 40 + 11]);  
   label(btex $(a)$ etex, z[0 + 99]); 
   
   drawarrow z[100+ 61 + 8 + 3]--z[100+ 61 + 8 + 2];
   label.lft(btex $10$ etex, z[100 + 6]);
   label.top(btex $0$ etex,z[ 100+ 10]);
   label.top(btex $1$ etex, z[100+ 8]); 
   label(btex $1$ etex, z[ 100 + 9]);  
   label.top(btex $0$ etex, z[100 + 20+ 8]); 
   label(btex $0$ etex, z[ 100 +20 + 9]);  
   label.top(btex $0$ etex, z[100 + 40+ 8]); 
   label(btex $0$ etex, z[100 + 40 + 11]);  
   label(btex $(b)$ etex, z[100 + 99]); 

   drawarrow z[200+ 61 + 8*2 + 3]--z[200+ 61 + 8*2 + 2]; 
   label.lft(btex $1$ etex, z[200 + 6]);
   label.top(btex $1$ etex,z[ 200+ 10]);
   label.top(btex $0$ etex, z[200+ 8]); 
   label(btex $0$ etex, z[ 200 + 9]);  
   label.top(btex $1$ etex, z[200 + 20+ 8]); 
   label(btex $1$ etex, z[ 200 +20 + 9]);  
   label.top(btex $0$ etex, z[200 + 40+ 8]); 
   label(btex $0$ etex, z[200 + 40 + 11]);  
   label(btex $(c)$ etex, z[200 + 99]); 

   drawarrow z[300+ 61 + 8*3 + 3]--z[300+ 61 + 8*3 + 2]; 
   label.lft(btex  etex, z[300 + 6]);
   label.top(btex  etex,z[ 300+ 10]);
   label.top(btex $1$ etex, z[300+ 8]); 
   label(btex $1$ etex, z[ 300 + 9]);  
   label.top(btex $0$ etex, z[300 + 20+ 8]); 
   label(btex $0$ etex, z[ 300 +20 + 9]);  
   label.top(btex $1$ etex, z[300 + 40+ 8]); 
   label(btex $1$ etex, z[300 + 40 + 11]);  
   label(btex $(d)$ etex, z[300 + 99]); 

endfig;

verbatimtex
\end{document}
etex;
end