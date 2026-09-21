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
a = 8pt;
b = 5a;
c = sqrt(3)*b/2;

beginfig(1);
   % Figure of additive color mixtures
   z0 = (0,0);
   z1 = z0+(3b/2, b-c);
   z2 = z0+(b, b);
   z3 = z0+(2b, b);
   z4 = z0+(b/2, b+c);
   z5 = z0+(3b/2, b+c);
   z6 = z0+(5b/2, b+c);
   
   path p, q, r, pP, pD, pT, pW, qP, qD, qT, qW, rP, rD, rT, rW;
   p =  z2..z1..z6..z5;
   pP = z6..z5..z2;
   pD = z6..z1..z2;
   pT = z2..z5..z6;
   pW = z2..z1..z6..z5.. cycle;
   q = z3..z6..z4..z2;
   qP = z4..z2..z3;
   qD = z4..z6..z3;
   qT = z3..z2..z4;
   qW = z3..z6..z4..z2.. cycle;
   r = z5..z4..z1..z3;
   rP= z1..z3..z5;
   rD = z1..z4..z5;
   rT = z5..z3..z1;
   rW = z5..z4..z1..z3.. cycle;
   
   path pPqPrP, pPrTq, qPpTr, rPqTp, pqDrT, qrDpT, rpDqT;
   pPqPrP = buildcycle(pP, qP, rP);
   pPrTq = buildcycle(pP, rT, q);
   qPpTr = buildcycle(qP, pT, r);
   rPqTp = buildcycle(rP, qT, p);
   pqDrT= buildcycle(p, qD, rT);
   qrDpT = buildcycle(q, rD, pT);
   rpDqT = buildcycle(r, pD, qT);
   
   fill pPqPrP withcolor (1, 1,1);
   fill pPrTq withcolor (1, 1,0);
   fill qPpTr withcolor (0, 1,1);
   fill rPqTp withcolor (1,0,1);
   fill pqDrT  withcolor (1, 0, 0);
   fill qrDpT  withcolor (0, 1,0);
   fill rpDqT  withcolor (0, 0,1);  
endfig;

beginfig(2);
   %Figure of subtractive color mixtures
   z0 = (0,0);
   z1 = z0+(3b/2, b-c);
   z2 = z0+(b, b);
   z3 = z0+(2b, b);
   z4 = z0+(b/2, b+c);
   z5 = z0+(3b/2, b+c);
   z6 = z0+(5b/2, b+c);
   
   path p, q, r, pP, pD, pT, pW, qP, qD, qT, qW, rP, rD, rT, rW;
   p =  z2..z1..z6..z5;
   pP = z6..z5..z2;
   pD = z6..z1..z2;
   pT = z2..z5..z6;
   pW = z2..z1..z6..z5.. cycle;
   q = z3..z6..z4..z2;
   qP = z4..z2..z3;
   qD = z4..z6..z3;
   qT = z3..z2..z4;
   qW = z3..z6..z4..z2.. cycle;
   r = z5..z4..z1..z3;
   rP= z1..z3..z5;
   rD = z1..z4..z5;
   rT = z5..z3..z1;
   rW = z5..z4..z1..z3.. cycle;
   
   path pPqPrP, pPrTq, qPpTr, rPqTp, pqDrT, qrDpT, rpDqT;
   pPqPrP = buildcycle(pP, qP, rP);
   pPrTq = buildcycle(pP, rT, q);
   qPpTr = buildcycle(qP, pT, r);
   rPqTp = buildcycle(rP, qT, p);
   pqDrT= buildcycle(p, qD, rT);
   qrDpT = buildcycle(q, rD, pT);
   rpDqT = buildcycle(r, pD, qT);
   
   fill pPqPrP withcolor (0, 0,0);
   fill pPrTq withcolor  (0, 0, 1);
   fill qPpTr withcolor (1, 0,0);
   fill rPqTp withcolor (0, 1,0);
   fill pqDrT  withcolor (0, 1,1);
   fill qrDpT  withcolor (1, 0,1);
   fill rpDqT  withcolor (1,1,0);  
endfig;

beginfig(3);
    z0 = (0,0);
    for i=1 upto 18:
        for j=1 upto 16:
            z[20i +j]= z0 +((i-1)*a,(j-1)*a);
        endfor;
    endfor;
    draw z21--z361--z376--z36-- cycle;
    for i=1 upto 18:
%        dotlabel(btex  etex,z[20i +1]);
        dotlabel(btex  etex,z[20i +16]);
    endfor;
     for j=1 upto 16:
        dotlabel(btex  etex,z[20 + j]);
%        dotlabel(btex  etex,z[360 + j]);
    endfor;
    dotlabel(btex  etex,z65);
    dotlabel(btex  etex,z212);
    dotlabel(btex  etex,z307);

    pickup pencircle scaled1pt;
    draw z65--z212--z307-- cycle;
endfig;

beginfig(4);
    z0 = (0,0);
    for i=1 upto 19:
        for j=1 upto 16:
            z[20i +j]= z0 +((i-1)*a,(j-1)*a);
        endfor;
    endfor;
%    draw z21--z361--z376--z36-- cycle;
    path p, q;
    p = for i = 0 upto 6:
            	z[65+20i+i]--z[65+20i+i+1]--z[65+20(i+1)+i+1]--
        endfor
        for i=0 upto 4:
            z[212+20i-i]--z[212+20(i+1)-i]---z[212+20(i+1)-i-1]--
        endfor 
        for i=0 upto 1:
            z[307 -100i-i]--z[307-100i-i-1]--z[307 -100(i+1)-i-1]--
        endfor
        cycle;
    q = z[320+14]--z[340+14]--z[340+15]--z[320+15]-- cycle;
    fill p withcolor 0.5white;    
    fill q withcolor 0.5white;   
    
    z500 =0.5[z[380+14], z[380+15]];
    z501 =0.5[z[340+14], z[340+15]];
    drawarrow z500--z501;
    label.rt(btex pixel etex,  z500);
    for i=1 upto 18:
        draw z[20i +1]--z[20i +16];
    endfor
   for j=1 upto 16:
        draw z[20 + j]--z[360 + j];
    endfor

    for i=1 upto 18:
        dotlabel(btex  etex,z[20i +1]);
        dotlabel(btex  etex,z[20i +16]);
    endfor;
     for j=1 upto 16:
        dotlabel(btex  etex,z[20 + j]);
        dotlabel(btex  etex,z[360 + j]);
    endfor;
        
    pickup pencircle scaled1pt;
    draw z65--z212--z307-- cycle dashed evenly;
endfig;


beginfig(5);
   z0= (0,3a);
   z1= z0 +(20a,0);
   drawarrow z0--z1;
   for i=1 upto 19:
      z[10+i]= z0+(i*a, 4a*sind(301-30i)+ 0.5a*sind(2(301-30i))+a*sind(3(301-30i)));
      z[110+i]= z0+(i*a,0);
   endfor
   draw 
      for i=1 upto 18:
         z[10+i]..
      endfor
      z[10+19];
   for i=1 upto 19:
         draw z[110+i]--z[10+i] withcolor red;
      endfor 
endfig;

numeric a;
a = 1pt;

beginfig(6);
   z0= (0,8a);
   z1= z0 +(160a,0);
   drawarrow z0--z1;
   for i=1 upto 159:
      z[10+i]= z0+(i*a, 2400a*sind(2401-30i)/(2401-30i));
   endfor
   draw 
      for i=4 upto 154:
         z[10+i]..
      endfor
      z[10+155];
endfig;

numeric a, R, r;
a = 8pt;
R = 5a;
r = R*sind(12);

beginfig(7);
   z0 = (R+r, R+r);
   z1 = (r,0);
   z2 = (0,r);
   z3 = (-r,0);
   z4 = (0,-r);
   for i = 1 upto 12:
      z[5i+1] = z0 + R*(cosd(30i + 60), sind(30i + 60));
      for j = 1 upto 4:
         z[5i+1+j] = z[5i+1] + z[j];
      endfor
      path p;
      p =  
      for j = 1 upto 4:
         z[5i+1+j]..
      endfor cycle;
   
%     fill p withcolor 
%      if i = 1 :
%         (255,0,0)
%      else: if i = 2 :
%         (255,127,0)
%      else: if i = 3 :
%         (255,255,0)
%      else: if i = 4 :
%         (127,255,0)
%      else: if i = 5 :
%         (0,255, 0)
%      else: if i = 6 :
%         (0,255,127)
%      else: if i = 7 :
%         (0,255, 255)
%      else: if i = 8 :
%         (0,125,255)
%      else: if i = 9 :
%         (0,0,255)
%      else: if i = 10 :
%         (127,0,255)
%      else: if i = 11 :
%         (225,0,255)
%      else: if i = 12 :
%         (255,0, 125)
%      fi 
%      fi
%      fi
%      fi
%      fi
%      fi
%      fi 
%      fi
%      fi
%      fi
%      fi
%      fi;   
      fill p withcolor 
      if i = 1 :
         (237,28,36)
      else: if i = 2 :
         (241,89,34)
      else: if i = 3 :
         (250,166,26)
      else: if i = 4 :
         (255,242,0)
      else: if i = 5 :
         (166,206,57)
      else: if i = 6 :
         (40,164,74)
      else: if i = 7 :
         (31,142,131)
      else: if i = 8 :
         (25,105,137)
      else: if i = 9 :
         (12,77,162)
      else: if i = 10 :
         (71,47,146)
      else: if i = 11 :
         (112,44,145)
      else: if i = 12 :
         (182,25, 93)
      fi 
      fi
      fi
      fi
      fi
      fi
      fi 
      fi
      fi
      fi
      fi
      fi;
      
      draw p;
   endfor
endfig;

numeric R, r;
R = 4a;
r = R*sind(20);

beginfig(8);
   z0 = (R+r, R+r);
   z1 = (r,0);
   z2 = (0,r);
   z3 = (-r,0);
   z4 = (0,-r);
   for i = 1 upto 6:
      z[5i+1] = z0 + R*(cosd(60i + 30), sind(60i + 30));
      for j = 1 upto 4:
         z[5i+1+j] = z[5i+1] + z[j];
      endfor
      path p;
      p =  
      for j = 1 upto 4:
         z[5i+1+j]..
      endfor cycle;
   
     fill p withcolor 
      if i = 1 :
         (255,0,0)
      else: if i = 2 :
         (255,255,0)
      else: if i = 3 :
         (0,255, 0)
      else: if i = 4 :
         (0,255, 255)
      else: if i = 5 :
         (0,0,255)
      else: if i = 6 :
         (225,0,255)
      fi 
      fi
      fi
      fi
      fi
      fi;   
      draw p;
   endfor
endfig;

verbatimtex
\end{document}
etex;
end