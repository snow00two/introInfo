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

numeric a, r, R;
a = 5pt;
r = 6pt;
R = 5a;

beginfig(1);
     def circ_large(expr p) = 
      begingroup
          save a, r, t, l, b, q; 
          numeric a;
          pair b, r, t, l;
          path q;
          a = 6pt;
          r = p +  a*(1,0);
          t = p + a*(0,1);
          l = p + a*(-1,0);
          b = p + a*(0,-1);
          q = r..t..l..b.. cycle;
          draw q;
      endgroup
   enddef;
   
   z0 = (0,2.5R);
   for i = 1 upto 9: 
      for j= 1 upto 3:
         z[130i+13j] = z0 + (i*R, - j*R);
         for k = 1 upto 12:
            z[130i+13j + k] 
               = z[130i+13j]+ (r*cosd(30k + 60), r*sind(30k + 60));
         endfor
      endfor
   endfor
   for i = 1, 5, 7, 9:
      circ_large(z[130*i + 13*2] );
   endfor
   for i = 3:
      circ_large(z[130*i + 13*1] );
      circ_large(z[130*i + 13*2] );
   endfor
   drawarrow z[130*1 + 13*2 + 11]--z[130*3 + 13*1+ 5];
   drawarrow z[130*1 + 13*2 + 10]--z[130*3 + 13*2+ 4];
   drawarrow z[130*5 + 13*2+10]--z[130*7 + 13*2+4];
   drawarrow z[130*7+ 13*2+10]--z[130*9 + 13*2+4];
   label.bot(btex hoge7\verb/_/4 etex, z[130*1 +13*2+ 7]);
   label.bot(btex hoge7\verb/_/7 etex, z[130*3 +13*2+ 7]);
   label.top(btex hoge7\verb/_/6 etex, z[130*3 +13*1+ 1]);
   label(btex or etex, z[130*4 +13*2]);
   label.bot(btex hoge7\verb/_/4 etex, z[130*5 +13*2+ 7]);
   label.bot(btex hoge7\verb/_/6 etex, z[130*7 +13*2+ 7]);
   label.bot(btex hoge7\verb/_/7 etex, z[130*9 +13*2+ 7]);
endfig;

beginfig(3);
     def circ_large(expr p) = 
      begingroup
          save a, r, t, l, b, q; 
          numeric a;
          pair b, r, t, l;
          path q;
          a = 6pt;
          r = p +  a*(1,0);
          t = p + a*(0,1);
          l = p + a*(-1,0);
          b = p + a*(0,-1);
          q = r..t..l..b.. cycle;
          draw q;
      endgroup
   enddef;
   
   z0 = (0,2.5R);
   for i = 1 upto 9: 
      for j= 1 upto 3:
         z[130i+13j] = z0 + (i*R, - j*R);
         for k = 1 upto 12:
            z[130i+13j + k] 
               = z[130i+13j]+ (r*cosd(30k + 60), r*sind(30k + 60));
         endfor
      endfor
   endfor

   for i = 1, 9:
      circ_large(z[130*i + 13*2] );
   endfor
   for i = 3, 5, 7,:
      circ_large(z[130*i + 13*1] );
   endfor

   drawarrow z[130*1 + 13*2 + 11]--z[130*3 + 13*1+ 5];
   drawarrow z[130*1 + 13*2 + 10]--z[130*9 + 13*2+ 4];
   drawarrow z[130*3 + 13*1+10]--z[130*5 + 13*1+4];
   drawarrow z[130*5+ 13*1+10]--z[130*7 + 13*1+4];
   drawarrow z[130*7 + 13*1 + 9]--z[130*9 + 13*2+ 3];  
   
   z1000 = 0.5[z[130*7 + 13*1 + 9], z[130*9 + 13*2+ 3]];  
   label.bot(btex main etex, z[130*1 +13*2+ 7]);
   label.top(btex branchA etex, z[130*3 +13*1+ 1]);
   label.llft(btex merge etex, z1000);
   label.bot(btex main etex, z[130*9 +13*2+ 7]);
%   label(btex or etex, z[130*4 +13*2]);
%   label.bot(btex hoge7\verb/_/4 etex, z[130*5 +13*2+ 7]);
%   label.bot(btex hoge7\verb/_/6 etex, z[130*7 +13*2+ 7]);
%   label.bot(btex hoge7\verb/_/7 etex, z[130*9 +13*2+ 7]);
endfig;

numeric b, c, d, e, f;
b = 15pt;
c = 11pt;
d = 2pt;
e = 2pt;
f = 10 pt;

beginfig(2);
   z0 = (b,11c);
   z1 = (5b,0);
   z2 = (0,-8c);   
   
   z10 = z0 + (0, c);
   z11 = z10 + (d, -c-e);
   z12 = z11 + (b,0);
   z13 = z12 + (d,c);
   z14 = z13 + (-b,0);
   z15 = z10 + (b,0);
   z16 = whatever[z13,z14] =whatever[z15,z12];
   z17 = 0.5[z10,z15];
   z18 = 0.5[z11,z12];   
   z19 = z17 + (0,0.5c);
   
    z20 = z18 + (-f, -c);
    z21 = z20 + (0,-c);
    z22 = z21 + (f,0);
    z23 = z22 + (0, c);
    z24 = z20 + (d, -d);
    z25 = z23 + (-d,-d);
    z26 = z24 + (0, -d);
    z27 = z25 + (0,-d);
    z28 = z26 + (0, -d);
    z29 = z27 + (0,-d);
    z30 = z28 + (0, -d);
    z31 = z29 + (0,-d);
    z32 = 0.5[z20,z23];
    z33 = z32 + (0,0.5c);
    z34 = z18 + (0,-0.5c) ;   
    
    z39 =  (b, -2c-e);
    for i = 10 upto 19:
       z[30 + i] = z39 + z[i];
    endfor
    draw 
       for j = 41 upto 44:
          z[j]--
       endfor 
       cycle;
   draw 
       for j = 41, 40, 45:
          z[j]--
       endfor  
       z46;
   z50 = z47 + (b,0);
   z51 = z50 + (b,0);
   z52 = z51 + (b,0);
   z53 = z47 - (2b,0);
   z54 = z17 - (0,4c);
   z55 = z17 + (0,c);

   draw z11--z12--z13--z14-- cycle;   
   draw z11--z10--z15--z16;
   draw z20--z21--z22--z23-- cycle;
   draw z24--z25;
   draw z26--z27;
   draw z28--z29;
   draw z30--z31;
   draw z32--z33--z49--z47;
   draw z18--z34;
   drawarrow z50--z52;
   
   
   z100 = z1;
   z200 = z100+z1;
   z300 = z200+z1;
   z400 = z300 + z2;
   z500 = z400 - 3z1;
   for i=1 upto 5:
      for j = 10 upto 34:
         z[100i + j] =  z[100i]+ z[j];
      endfor
      for j = 40 upto 55:
         z[100i + j] =  z[100i]+ z[j];
      endfor
      draw z[100i+11]--z[100i+12]--z[100i+13]--z[100i+14]-- cycle;
      draw z[100i+11]--z[100i+10]--z[100i+15]--z[100i+16];
      draw z[100i+20]--z[100i+21]--z[100i+22]--z[100i+23]-- cycle;
      draw z[100i+24]--z[100i+25];
      draw z[100i+26]--z[100i+27];
      draw z[100i+28]--z[100i+29];
      draw z[100i+30]--z[100i+31];
      draw z[100i+32]--z[100i+33]--z[100i+49]--z[100i+47];
      draw z[100i+18]--z[100i+34];
      draw 
          for j = 41 upto 44:
             z[100i+j]--
          endfor 
          cycle;
    draw 
       for j = 41, 40, 45:
          z[100i+j]--
       endfor  
       z[100i+46];
   endfor
   for i=1 upto 2:
      drawarrow z[100i+50]--z[100i+52];
   endfor
   z600 = 0.5[z453,z550];
   z601 = 0.5[z555, z54];
   z602 = 0.5[z455, z354];
   drawarrow z555--z54;
   drawarrow z455--z354;
   drawarrow z453--z550;
   label.top(btex add etex, z51);   
   label.top(btex working tree etex, z55);   
   label.top(btex commit etex, z151);   
   label.top(btex stagging etex, z155);   
   label.top(btex  etex, z255);   
   label.top(btex merge etex, z251);   
   label.top(btex repository etex, z255);   
   label.top(btex main etex, z355);   
   label.bot(btex main etex, z454);
   label.bot(btex branch etex, z600);
   label.rt(btex editing etex, z601);
   label.lft(btex difference etex, z602);
endfig;

beginfig(4);
   z0 = (b,7c);
   z1 = (3b,-4c);
   z2 = (6b,0);   
   
   z10 = z0 + (0, c);
   z11 = z10 + (d, -c-e);
   z12 = z11 + (b,0);
   z13 = z12 + (d,c);
   z14 = z13 + (-b,0);
   z15 = z10 + (b,0);
   z16 = whatever[z13,z14] =whatever[z15,z12];
   z17 = 0.5[z10,z15];
   z18 = 0.5[z11,z12];   
   z19 = z17 + (0,0.5c);
   
    z20 = z18 + (-f, -c);
    z21 = z20 + (0,-c);
    z22 = z21 + (f,0);
    z23 = z22 + (0, c);
    z24 = z20 + (d, -d);
    z25 = z23 + (-d,-d);
    z26 = z24 + (0, -d);
    z27 = z25 + (0,-d);
    z28 = z26 + (0, -d);
    z29 = z27 + (0,-d);
    z30 = z28 + (0, -d);
    z31 = z29 + (0,-d);
    z32 = 0.5[z20,z23];
    z33 = z32 + (0,0.5c);
    z34 = z18 + (0,-0.5c) ;   
    
    z39 =  (b, -2c-e);
    for i = 10 upto 19:
       z[30 + i] = z39 + z[i];
    endfor
    draw 
       for j = 41 upto 44:
          z[j]--
       endfor 
       cycle;
   draw 
       for j = 41, 40, 45:
          z[j]--
       endfor  
       z46;
   z50 = z47 + (b,-c);
   z51 = z50 + (2b,0);
   z52 = z51 + (2b,0);
   z53 = z47 - (2b,0);
   z54 = z17 + (b,-3.5c);
   z55 = z17 + (0,c);
   z56 = z54 +(-0.5b,-c);
   
   draw z11--z12--z13--z14-- cycle;   
   draw z11--z10--z15--z16;
   draw z20--z21--z22--z23-- cycle;
   draw z24--z25;
   draw z26--z27;
   draw z28--z29;
   draw z30--z31;
   draw z32--z33--z49--z47;
   draw z18--z34;
   drawarrow z50--z52;
   label.top(btex push etex, z51);  
   label.bot(btex .git etex, z54);      
   
   z100 = z1;
   z200 = z2;
   for i=1 upto 2:
      for j = 10 upto 34:
         z[100i + j] =  z[100i]+ z[j];
      endfor
      for j = 40 upto 56:
         z[100i + j] =  z[100i]+ z[j];
      endfor
   endfor
   for i=1 upto 1:
      draw z[100i+11]--z[100i+12]--z[100i+13]--z[100i+14]-- cycle;
      draw z[100i+11]--z[100i+10]--z[100i+15]--z[100i+16];
      draw z[100i+20]--z[100i+21]--z[100i+22]--z[100i+23]-- cycle;
      draw z[100i+24]--z[100i+25];
      draw z[100i+26]--z[100i+27];
      draw z[100i+28]--z[100i+29];
      draw z[100i+30]--z[100i+31];
      draw z[100i+32]--z[100i+33]--z[100i+49]--z[100i+47];
      draw z[100i+18]--z[100i+34];
      draw 
          for j = 41 upto 44:
             z[100i+j]--
          endfor 
          cycle;
      draw 
          for j = 41, 40, 45:
             z[100i+j]--
          endfor  
          z[100i+46];
         label.bot(btex .git etex, z[100i +54]);      
   endfor
   for i =2 upto 2:
         draw 
          for j = 41 upto 44:
             z[100i+j]--
          endfor 
          cycle;
      draw 
          for j = 41, 40, 45:
             z[100i+j]--
          endfor  
          z[100i+46];
      draw z[100i+49]--z[100i+47];
      label.bot(btex .git etex, z[100i +54]);      
   endfor
   draw z247--z249;   
   z270 = z249 + (1.7b,0);
   z271 = z270 + (0,c);
   z272 = z271 +(-3.2b,0);
   z273 =z272 +(0, -c);
   z274 = 0.5[z272,z273];
   z275 = z274 + (0,c);
   draw z270--z271--z272--z273-- cycle;
   label.rt(btex repository etex, z274);   
   label.rt(btex GitHub etex, z275);   
   
   drawarrow z256--z150 ; 
   z280 = 0.5[z256, z150];
   label.rt(btex pull etex, z280);
   

endfig;

verbatimtex
\end{document}
etex;
end
