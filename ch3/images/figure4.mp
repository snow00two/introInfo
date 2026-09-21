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
b = a;
c = sqrt(3)*b/2;

beginfig(1);
   %Logical gates
   z0 = (0,0);
   z1 = z0 + (0,2b);
   z2 = z1 +(0,-b);
   %NOT
   z10 = z1 +(b,7b);
   z11 = z10+(0,2b);
   z12 = z11+(4b,0);
   z13 = z10+(4b,0);
   z14 = z13 +(4c,2b);
   z15 = z13 +(0,4b);
   z16 = z14+(b,0);
   z17 = z14+(4b,0);
   z18 = z10 + (4b+2c,-2b);
   draw z11--z12;
   draw z13--z14--z15-- cycle;
   draw z14..z16.. cycle;
   draw z16--z17;
   label(btex NOT etex,z18); 
   label.lft(btex $A$ etex, z11);
  
   %AND
   z20 = z10+(16b,0);
   z21 = z20+(0,b);
   z22 = z21+(4b,0);
   z23 = z20+ (0, 3b);
   z24 = z23 +(4b,0);
   z25 = z20 +(4b,0);
   z26 = z25 +(0,4b);
   z27 = z26+(4b,0);
   z28 = z25 + (4b,0);
   z29= z28 + (2b,2b);
   z30 = z29 + (4b,0);
   z31 = z20+ (6.5b,-2b);
   draw z21--z22;
   draw z23--z24;
   draw z28..z29..z27--z26--z25-- cycle;
   draw z29--z30;
   label(btex AND etex,z31);
   label.lft(btex $B$ etex, z21);
   label.lft(btex $A$ etex, z23);
   
   %OR
   z40 = z20+(18b,0);
   z41 = z40+(0,b);
   z42 = z41+(5b,0);%
   z43 = z40+ (0, 3b);
   z44 =  z43 +(5b,0);%
   z45 = z40 +(4b,0);
   z46 = z45 +(0,4b);
   z47 = z46+(4b,0);
   z48 = z45 + (4b,0);
   z49= z48 + (2b,2b);
   z50 = z49 + (4b,0);
   z51 = 0.5[z42,z44];
   path p, q, r;
   p = z46..z51..z45;
   q = z41--z42;
   r = z43--z44;
   z52 = q intersectionpoint p;
   z53 = r intersectionpoint p;
   z54 = z40 + (6.5b,-2b);
   draw z41--z52;
   draw z43--z53;
   draw z48..z49..z47--z46..z51..z45-- cycle;
   draw z49--z50;
   label(btex OR etex,z54);
   label.lft(btex $B$ etex, z41);
   label.lft(btex $A$ etex, z43);

      %NAND
   z80 = z2;%z60+(18b,0);
   z81 = z80+(0,b);
   z82 = z81+(4b,0);
   z83 = z80+ (0, 3b);
   z84 =  z83 +(4b,0);
   z85 = z80 +(4b,0);
   z86 = z85 +(0,4b);
   z87 = z86+(4b,0);
   z88 = z85 + (4b,0);
   z89= z88 + (2b,2b);
   z90 = z89 + (4b,0);
   z91 = z89 + (b,0);
   z92 = z80+ (6.5b,-2b);

   draw z81--z82;
   draw z83--z84;
   draw z88..z89..z87--z86--z85-- cycle;
   draw z91--z90;
   draw z89..z91.. cycle;
   label(btex NAND etex,z92);
   label.lft(btex $B$ etex, z81);
   label.lft(btex $A$ etex, z83);

  %NOR
   z100 = z80+(18b,0);
   z101 = z100+(0,b);
   z102 = z101+(5b,0);%
   z103 = z100+ (0, 3b);
   z104 =  z103 +(5b,0);%
   z105 = z100 +(4b,0);
   z106 = z105 +(0,4b);
   z107 = z106+(4b,0);
   z108 = z105 + (4b,0);
   z109= z108 + (2b,2b);
   z110 = z109 + (4b,0);
   z111 = 0.5[z102,z104];
   path p, q, r;
   p = z106..z111..z105;
   q = z101--z102;
   r = z103--z104;
   z112 = q intersectionpoint p;
   z113 = r intersectionpoint p;
   z114 = z109 +(b,0);
   z115 = z100 + (7b,-2b);

   draw z101--z112;
   draw z103--z113;
   draw z108..z109..z107--z106..z111..z105-- cycle;
   draw z114--z110;
   draw z109..z114.. cycle;
   label(btex NOR etex,z115);
   label.lft(btex $B$ etex, z101);
   label.lft(btex $A$ etex, z103);

   %XOR incomplete
   z60= z100+(18b,0);
   z61 = z60+(0,b);
   z62 = z61+(5b,0);%
   z63 = z60+ (0, 3b);
   z64 =  z63 +(5b,0);%
   z65 = z60 +(4b,0);
   z66 = z65 +(0,4b);
   z67 = z66+(4b,0);
   z68 = z65 + (4b,0);
   z69= z68 + (2b,2b);
   z70 = z69 + (4b,0);
   z71 = 0.5[z62,z64];
   path p, q, r;
   p = z66..z71..z65;
   q = z61--z62;
   r = z63--z64;
   z72 = q intersectionpoint p;
   z73 = r intersectionpoint p;
   z74 = z66 + (b/2,0);
   z75 = z71+ (b/2,0); 
   z76 = z65+ (b/2,0);
   z78 = z60 + (6b,-2b);
   draw z61--z72;
   draw z63--z73;
   draw z68..z69..z67--z74...z75..z76-- cycle;
   draw p;
   draw z69--z70;
   label(btex XOR etex,z78);
   label.lft(btex $B$ etex, z61);
   label.lft(btex $A$ etex, z63);

endfig;

beginfig(2);
   %Logical gates
   z0 = (0,4b);
   z1 = z0 + (0,0);
   z2 = z1 +(0,-b);
   %NOT
   z10 = z1 +(b,0);
   z11 = z10+(0,2b);
   z12 = z11+(4b,0);
   z13 = z10+(4b,0);
   z14 = z13 +(4c,2b);
   z15 = z13 +(0,4b);
   z16 = z14+(b,0);
   z17 = z14+(4b,0);
   z18 = z10 + (4b+2c,-4b);
   draw z11--z12;
   draw z13--z14--z15-- cycle;
   draw z14--z17;
   label(btex ID etex,z18); 
   label.rt(btex $A$ etex,z17); 
   label.lft(btex $A$ etex, z11);
endfig;

beginfig(3);
    z0 = (0,0);
    %XOR incomplete
   z10= z0+(0,5b);
   z11 = z10+(0,b);
   z12 = z11+(9b,0);%
   z13 = z10+ (0, 3b);
   z14 = z13 +(9b,0);%
   z15 = z10 +(8b,0);
   z16 = z15 +(0,4b);
   z17 = z16+(4b,0);
   z18 = z15 + (4b,0);
   z19= z18 + (2b,2b);
   z20 = z19 + (4b,0);
   z21 = 0.5[z12,z14];
   path p, q, r;
   p = z16..z21..z15;
   q = z11--z12;
   r = z13--z14;
   z22 = q intersectionpoint p;
   z23 = r intersectionpoint p;
   z24 = z16 + (b/2,0);
   z25 = z21+ (b/2,0); 
   z26 = z15+ (b/2,0);
   z28 = z10 + (6b,-2b);
   z29 = z11 + (4b,0);
   z30 = z13 + (6b,0);
   draw z13--z23;
   draw z29--z22;
   draw z18..z19..z17--z24...z25..z26-- cycle;
   draw p;
   draw z19--z20;
%   label(btex XOR etex,z28);
 %  label.lft(btex $B$ etex, z11);

   %AND
   z40 = z0+(0,0);
   z41 = z40+(0,b);
   z42 = z41+(8.2b,0);
   z43 = z40+ (0, 3b);
   z44 = z43 +(8.2b,0);
   z45 = z40 +(8.2b,0);
   z46 = z45 +(0,4b);
   z47 = z46+(4b,0);
   z48 = z45 + (4b,0);
   z49= z48 + (2b,2b);
   z50 = z49 + (4b,0);
   z51 = z40+ (15.5b,-2b);
   z52 = z41 + (4b,0);
   z53 = z43 + (6b,0);
   draw z41--z42;
   draw z53--z44;
   draw z48..z49..z47--z46--z45-- cycle;
   draw z49--z50;  
   draw z52--z29;
   draw z53--z30;
   dotlabel(btex etex,z30);
   dotlabel(btex etex,z52);
   
   label.lft(btex $A$ etex, z13);
   label.lft(btex $B$ etex, z41);
   label.rt(btex $S$ etex,z20);
   label.rt(btex $C$ etex, z50);
endfig;


numeric a, b, c;
a = 4pt;
b = a;
c = sqrt(3)*b/2;
beginfig(4);
   def circ_large(expr p) = 
      begingroup
          save a, r, t, l, b, q; 
          numeric a;
          pair b, r, t, l;
          path q;
          a = 3pt;
          r = p +  a*(1,0);
          t = p + a*(0,1);
          l = p + a*(-1,0);
          b = p + a*(0,-1);
          q = r..t..l..b.. cycle;
          fill q withcolor black;
      endgroup
   enddef;
   %(a)
   z0 = (2a,44a);
   z1 = z0 + (-2a,0);
   z2 = z1 + (0,2a);
   z3 = z2 + (0.3a, 0.3a);
   z4 = z2+ (0,0.6a);
   z5 = z2 + (-0.3a, 0.3a);
   draw z2..z3..z4..z5.. cycle;
   draw z1--z2;
   label.top(btex $1$ etex, z4);

   for i=1 upto 8:
      for j=0 upto 9:
         z[10i + j ]=z0 + (4a*(i-1)-2a, -3a*j);
      endfor
   endfor
   
   for i = 3, 5, 7:
      z[100+10i+1]=z[10i+9] +(0,2b);
      z[100+10i+2]=z[100+10i+1] +(0,b);
      z[100+10i+3]= z[100+10i+2] +(-b,0);
      z[100+10i+4]= z[100+10i+3] +(2b,0);
      z[100+10i+5]= z[100+10i+2] +(0,2c);
      z[100+10i+6]= z[100+10i+5] +(0,0.7a);
      draw z[100+10i+1]--z[100+10i+2];
      draw z[100+10i+3]--z[100+10i+4]--z[100+10i+5]-- cycle;
      draw z[100+10i+5]..z[100+10i+6].. cycle;
      draw z[100+10i+6]--z[10i+7];
   endfor
   for i = 2, 4, 6:
      z[100+10i+1]=z[10i+9] +(0,2b);
      z[100+10i+2]=z[100+10i+1] +(0,b);
      z[100+10i+3]= z[100+10i+2] +(-b,0);
      z[100+10i+4]= z[100+10i+3] +(2b,0);
      z[100+10i+5]= z[100+10i+2] +(0,2c);
      z[100+10i+6]= z[100+10i+5] +(0,0.7a);
      draw z[100+10i+1]--z[100+10i+2];
      draw z[100+10i+3]--z[100+10i+4]--z[100+10i+5]-- cycle;
      draw z[100+10i+5]--z[10i+7];
   endfor
   for i = 2, 4, 6:
     z[200+10i +1]= 0.5[z[10i+9],z[10i+19]];
     z[200+10i +2]= z[200+10i +1]+(0,2b);
     draw z[200+10i +1]--z[200+10i +2];
     draw z[100+10i+1]--z[100+10i+11];
   endfor
   
   z243 = z241+(0,-2b);
   z244 = z243 +(0,-2b-a);
   label(btex INPUT etex, z243);
   label(btex (a) etex, z244);
   
   z300 = z82 + (-20a,-33a);
   z301 = z300+(-3a,0);
   z302 = z300+(3a,0);
   z303 = z300 +(0,-3a);
   z304 =z300 +(0,3a);
   
   z310 = z300 + (7a,0);
   z311=z310 +(0,-7a);

   draw z301--z302;
   draw z303--z304;
   circ_large(z300);
   label(btex $=$ etex, z310);
   label(btex (b) etex, z311);
  
   numeric b;
   b = 5pt;
    %AND
   z320 = z87+(-10a,-20a);
   z321 = z320+(0,b);
   z322 = z321+(5b,0);
   z323 = z320+ (0, 3b);
   z324 = z323 +(5b,0);
   z325 = z320 +(5b,0);
   z326 = z325 +(0,4b);
   z327 = z326+(4b,0);
   z328 = z325 + (4b,0);
   z329= z328 + (2b,2b);
   z330 = z329 + (3b,0);
   z331 = z321 + (2.5b,0);
   z332 = z331 + (0,7b);
   z333 = z331 + (0,-5b);
   z334 = z333+ (0,-2b);
   draw z331--z322;
   draw z323--z324;
   draw z328..z329..z327--z326--z325-- cycle;
   draw z329--z330;
   draw z332--z333;
   dotlabel( btex etex,z331);


    for i=1 upto 7:
       draw z[10i ]--z[10i + 7];
    endfor
    for j=0 upto 7:
       draw z[10 + j ]--z[80 + j ];
    endfor
    
    for i = 2 upto 7:
       if i = 2 :
         for j = 4, 5, 6, 7:
            circ_large(z[10i + j]);
         endfor
      else: if i = 3:
         for j = 0, 1, 2, 3:
            circ_large(z[10i + j]);
         endfor
      else: if i = 4:
         for j = 2, 3, 6, 7:
            circ_large(z[10i + j]);
         endfor
      else: if i = 5:
         for j = 0,1, 4, 5:
            circ_large(z[10i + j]);
         endfor
      else:if i = 6:
         for j = 1, 3, 5, 7:
            circ_large(z[10i + j]);
         endfor
      else:
         for j = 0, 2, 4, 6:
            circ_large(z[10i + j]);
         endfor
      fi
      fi
      fi
      fi
      fi
   endfor
   
   for j = 0 upto 7:
      dotlabel(btex etex,z[10 + j ]);
   endfor
   label.rt(btex $000$ etex, z80);
   label.rt(btex $001$ etex, z81);
   label.rt(btex $010$ etex, z82);
   label.rt(btex $011$ etex, z83);
   label.rt(btex $100$ etex, z84);
   label.rt(btex $101$ etex, z85);
   label.rt(btex $110$ etex, z86);
   label.rt(btex $111$ etex, z87);
   
   %Ex 
   z500 = z0 + (37a,0);
   z501 = z500 + (-2a,0);
   z502 = z501 + (0,2a);
   z503 = z502 + (0.3a, 0.3a);
   z504 = z502+ (0,0.6a);
   z505 = z502 + (-0.3a, 0.3a);
   draw z502..z503..z504..z505.. cycle;
   draw z501--z502;
   label.top(btex $1$ etex, z504);

   for i=1 upto 8:
      for j=0 upto 9:
         z[500 + 10i + j ]=z500 + (4a*(i-1)-2a, -3a*j);
      endfor
   endfor
   
   for i = 3, 5, 7:
      z[600+10i+1]=z[500+10i+9] +(0,2b);
      z[600+10i+2]=z[600+10i+1] +(0,b);
      z[600+10i+3]= z[600+10i+2] +(-b,0);
      z[600+10i+4]= z[600+10i+3] +(2b,0);
      z[600+10i+5]= z[600+10i+2] +(0,2c);
      z[600+10i+6]= z[600+10i+5] +(0,0.7a);
      if i = 5 :
         draw z[600+10i+1]--z[600+10i+2];
      else :
         draw z[600+10i+1]--z[600+10i+2] withcolor red;
      fi
      draw z[600+10i+3]--z[600+10i+4]--z[600+10i+5]-- cycle;
      draw z[600+10i+5]..z[600+10i+6].. cycle;    
      draw z[600+10i+6]--z[500+10i+7] ;
   endfor
   for i = 2, 4, 6:
      z[600+10i+1]=z[500 + 10i+9] +(0,2b);
      z[600+10i+2]=z[600+10i+1] +(0,b);
      z[600+10i+3]= z[600+10i+2] +(-b,0);
      z[600+10i+4]= z[600+10i+3] +(2b,0);
      z[600+10i+5]= z[600+10i+2] +(0,2c);
      z[600+10i+6]= z[600+10i+5] +(0,0.7a);
      if i = 4 :
         draw z[600+10i+1]--z[600+10i+2] ;
      else :
         draw z[600+10i+1]--z[600+10i+2]  withcolor red;
      fi
      draw z[600+10i+3]--z[600+10i+4]--z[600+10i+5]-- cycle;
      draw z[600+10i+5]--z[500+ 10i+7];
   endfor
   for i = 2, 4, 6:
     z[700+10i +1]= 0.5[z[500+10i+9],z[500+10i+19]];
     z[700+10i +2]= z[700+10i +1]+(0,2b);
     if i = 4:
         draw z[700+10i +1]--z[700+10i +2];
        draw z[600+10i+1]--z[600+10i+11];
        label.bot (btex $0$ etex, z[700+10i +1]);
      else: 
         label.bot (btex $1$ etex, z[700+10i +1]);
         draw z[700+10i +1]--z[700+10i +2] withcolor red;
         draw z[600+10i+1]--z[600+10i+11] withcolor red;
      fi
   endfor
   for i=1:
       draw z502--z[500+10i + 7] withcolor red;
    endfor
   for i=2, 5, 6:
       draw z[500+10i ]--z[600+10i+5] withcolor red;
    endfor
    for i=3, 4, 7:
       draw z[500+10i ]--z[500+10i + 7];
    endfor
    for j=0 upto 3:
       draw z[500+10 + j ]--z[500+30 + j ] withcolor red;;
       draw z[500+30 + j ]--z[500+80 + j ];
    endfor
    for j= 4 upto 4 :
       draw z[500+10 + j ]--z[500+70 + j ] withcolor red;;
       draw z[500+70 + j ]--z[500+80 + j ];
    endfor
   for j= 5 upto 5 :
       draw z[500+10 + j ]--z[500+80 + j ] withcolor red;;
    endfor
    for j=6 upto 7:
       draw z[500+10 + j ]--z[500+40 + j ] withcolor red;;
       draw z[500+40 + j ]--z[500+80 + j ];
    endfor
   for i = 2 upto 7:
       if i = 2 :
         for j = 4, 5, 6, 7:
            circ_large(z[500+10i + j]);
         endfor
      else: if i = 3:
         for j = 0, 1, 2, 3:
            circ_large(z[500+10i + j]);
         endfor
      else: if i = 4:
         for j = 2, 3, 6, 7:
            circ_large(z[500+10i + j]);
         endfor
      else: if i = 5:
         for j = 0,1, 4, 5:
            circ_large(z[500+10i + j]);
         endfor
      else:if i = 6:
         for j = 1, 3, 5, 7:
            circ_large(z[500+10i + j]);
         endfor
      else:
         for j = 0, 2, 4, 6:
            circ_large(z[500+10i + j]);
         endfor
      fi
      fi
      fi
      fi
      fi
   endfor
   for j = 0 upto 7:
      dotlabel(btex etex,z[500+10 + j ]);
   endfor
   z743=z741+(0,-5a);
   label(btex (c) etex, z743);

endfig;


beginfig(5);
   def sqrt_large(expr p) = 
      begingroup
          save a, r, t, l, b, q; 
          numeric a;
          pair b, r, t, l;
          path q;
          a = 3pt;
          r = p +  a*(1,1);
          t = p + a*(-1,1);
          l = p + a*(-1,-1);
          b = p + a*(1,-1);
          q = r--t--l--b-- cycle;
          draw q;
          %fill q withcolor black;
      endgroup
   enddef;

   z0 = (0,29a);
   for j=0 upto 9:%i=1;
         z[10 + j ]=z0 + (0, -3a*j);
      endfor
   for i=2 upto 8:
      for j=0 upto 9:
         z[10i + j ]=z0 + (2a*(i-1), -3a*j);
      endfor
   endfor
 
    z300 = z0 + (34a,0);
   for j=0 upto 9:%i=1;
         z[300+10 + j ]=z300 + (0, -3a*j);
      endfor
   for i=2 upto 8:
      for j=0 upto 9:
         z[300+10i + j ]=z300 + (2a*(i-1), -3a*j);
      endfor
   endfor
   label(btex OUTPUT etex, z49);
   z90 = z49 + (0, -3a);
   label(btex (a) etex, z90);
   
   z200 = z81 + (7a,0);
   z201 = z200+(-3a,0);
   z202 = z200+(3a,0);
   z203 = z200 +(0,-3a);
   z204 =z200 +(0,3a);
   
   z210 =z83 + (7a,0);
   z211 =z210 + (-0.3a,-0.6a);
   z212 =z210 + (-0.3a, 0.6a);
   z213 =z210 + (0.3a,-0.6a);
   z214 =z210 + (0.3a, 0.6a);
   draw z211--z212;
   draw z213--z214;

   draw z201--z202;
   draw z203--z204;
   sqrt_large(z200);

   z220 = (x203, y90);
   label(btex (b) etex, z220);

%   numeric b;
%   b = 5pt;
%OR
   z240 = z84+(6.5b,b);
   z241 = z240+(b,0);
   z242 = z241+(0,-5b);
   z243 = z240+ (3b,0);%
   z244 =  z243 +(0,-5b);%
   z245 = z240 +(0,-4b);
   z246 = z245 +(4b,0);
   z247 = z246+(0,-4b);
   z248 = z245 + (0,-4b);
   z249= z248 + (2b,-2b);
   z250 = z249 + (0,-4b);
   z251 = 0.5[z242,z244];
   path p, q, r;
   p = z246..z251..z245;
   q = z241--z242;
   r = z243--z244;
   z252 = q intersectionpoint p;
   z253 = r intersectionpoint p;
   z254 = z240 + (-2b,-6.5b);
   z260 = z241 +(0,-3b);
   z261 = z260 +(-5b,0);
   z262 = z260 +(5b,0);
   draw z260--z252;
   draw z243--z253;
   draw z248..z249..z247--z246..z251..z245-- cycle;
   draw z249--z250;
   draw z261--z262;
   dotlabel(btex  etex, z260);

    for i=2 step 2 until 7:
       draw z[10i ]--z[10i + 8];
    endfor
    
    for j=0 upto 7:
           draw z[10 + j ]--z[70 + j ];
     endfor
    
    for i = 2 upto 7:
       if i = 2 :
         for j = 4, 5, 6, 7:
            sqrt_large(z[10i + j]);
         endfor
      else: if i = 4:
         for j = 2, 3, 6, 7:
            sqrt_large(z[10i + j]);
         endfor
      else: if i=6:
         for j = 1, 3, 5, 7:
            sqrt_large(z[10i + j]);
         endfor
      fi
      fi
      fi
   endfor
   
    for i=2 step 2 until 7:
       if i = 6:
       	draw z[300+10i ]--z[300+10i + 8];
       else :
          draw z[300+10i ]--z[300+10i + 6];
          draw z[300+10i + 6]--z[300+10i + 8] withcolor red;
       fi
    endfor
    
    for j=0 upto 7:
      if j=6 :
          draw z[300+10 + j ]--z[300+70 + j ] withcolor red;       
       else :
          draw z[300+10 + j ]--z[300+70 + j ];
       fi
    endfor
    
    for i = 2 upto 7:
       if i = 2 :
         for j = 4, 5, 6, 7:
            sqrt_large(z[300+10i + j]);
         endfor
      else: if i = 4:
         for j = 2, 3, 6, 7:
            sqrt_large(z[300+10i + j]);
         endfor
      else: if i = 6:
         for j = 1, 3, 5, 7:
            sqrt_large(z[300+10i + j]);
         endfor
      fi
      fi
      fi
   endfor
   
   label.lft(btex $0$ etex, z10);
   label.lft(btex $1$ etex, z11);
   label.lft(btex $2$ etex, z12);
   label.lft(btex $3$ etex, z13);
   label.lft(btex $4$ etex, z14);
   label.lft(btex $5$ etex, z15);
   label.lft(btex $6$ etex, z16);
   label.lft(btex $7$ etex, z17);
   label.bot(btex $1$ etex, z328);
   label.bot(btex $1$ etex, z348);
   label.bot(btex $0$ etex, z368);
   z400 = (x348, y90);
   label(btex (c) etex, z400);
endfig;

numeric a, b, c;
a = 6pt;
b = a;
c = sqrt(3)*b/2;
beginfig(6);
   z0 = (5a,3a);
   z1 =  (-a,-a);
   z2 = (2a, 0);
   z3 = (0,2a);
   
   z4 = z0 + 4z1;
   z5 = z0 +4z2;
   z6 = z0 +4z3;
   drawarrow z0--z4;
   drawarrow z0--z5;
   drawarrow z0--z6;
   label.llft(btex $X_1$ etex, z4);
   label.rt(btex $X_2$ etex, z5);
   label.top(btex $X_m$ etex, z6);
   z10 = z0;
   z11 = z10 + 3z1;
   z12 = z10 + 3z1+ 3z2;
   z13 = z10 + 3z2;
   z15 = z10 + 3z3;
   z16 = z11 + 3z3;
   z17 = z12 + 3z3;
   z18 = z13 + 3z3;
   draw z10--z11--z12--z13-- cycle;
   draw z15--z16--z17--z18-- cycle;
   draw z10--z15;
   draw z11--z16;
   draw z12--z17;
   draw z13--z18;
   for i = 0 upto 1 :
   	for j=0 upto 3 :
         dotlabel(btex etex, z[10+5i+j]);
	endfor
   endfor
%   dotlabel.lft(btex $(0,1,\dots,0)$ etex, z11);
%   dotlabel.lrt(btex $(1,1,\dots,0)$ etex, z12);
%   dotlabel.urt(btex $(1,1,\dots,1)$ etex, z17);
   
   z20 = z0 + (15a,3a);
   z21 = z20 +(0,-a);
   z22 = z21 + (-2a,0);
   z23 = z21 + (2a,0);
   drawarrow z22..z21..z23;
   label(btex $\mathbf F$ etex, z20);
   %label.llft(btex $\to$ etex, z21);
   
   z30 =  z0 + (23a,-2a);
   z34 = z30 + 4z1;
   z35 = z30 +4z2;
   z36 = z30 +4z3;
%   drawarrow z30--z34;
   drawarrow z30--z35;
   drawarrow z30--z36;
   label.rt(btex $Y_1$ etex, z35);
   label.top(btex $Y_n$ etex, z36);
   z40 = z30;
   z41 = z40 + 3z1;
   z42 = z40 + 3z1+ 3z2;
   z43 = z40 + 3z2;
   z45 = z40 + 3z3;
   z46 = z41 + 3z3;
   z47 = z42 + 3z3;
   z48 = z43 + 3z3;
   draw z40--z43--z48--z45-- cycle;
   for j = 40, 43, 48, 45 :
         dotlabel(btex etex, z[j]);
   endfor

%   draw z45--z46--z47--z48-- cycle;
%   draw z40--z45;
%   draw z41--z46;
%   draw z42--z47;
%   draw z43--z48;

endfig;
numeric a, b, c;
a = 5pt;
b = a;
c = sqrt(3)*b/2;

beginfig(7);
   def circ_large(expr p) = 
      begingroup
          save a, r, t, l, b, q; 
          numeric a;
          pair b, r, t, l;
          path q;
          a = 3pt;
          r = p +  a*(1,0);
          t = p + a*(0,1);
          l = p + a*(-1,0);
          b = p + a*(0,-1);
          q = r..t..l..b.. cycle;
          fill q withcolor black;
      endgroup
   enddef;
   def sqrt_large(expr p) = 
      begingroup
          save a, r, t, l, b, q; 
          numeric a;
          pair b, r, t, l;
          path q;
          a = 3pt;
          r = p +  a*(1,1);
          t = p + a*(-1,1);
          l = p + a*(-1,-1);
          b = p + a*(1,-1);
          q = r--t--l--b-- cycle;
          draw q;
          %fill q withcolor black;
      endgroup
   enddef;

   z0 = (0,28a);
   for j=0 upto 9:%i=1;
         z[10 + j ]=z0 + (0, -3a*j);
      endfor
   for i=2 upto 18:
      for j=0 upto 9:
         z[10i + j ]=z0 + (4a*(i-1)-2a, -3a*j);
      endfor
   endfor
   
   for j = 3, 5, 9:
      z[200+10j+1]=z[10j+9] +(0,2b);
      z[200+10j+2]=z[200+10j+1] +(0,b);
      z[200+10j+3]= z[200+10j+2] +(-b,0);
      z[200+10j+4]= z[200+10j+3] +(2b,0);
      z[200+10j+5]= z[200+10j+2] +(0,2c);
      z[200+10j+6]= z[200+10j+5] +(0,0.7a);
      draw z[200+10j+1]--z[200+10j+2];
      draw z[200+10j+3]--z[200+10j+4]--z[200+10j+5]-- cycle;
      draw z[200+10j+5]..z[200+10j+6].. cycle;
      draw z[200+10j+6]--z[10j+7];
   endfor
   for j = 2, 4, 8:
      z[200+10j+1]=z[10j+9] +(0,2b);
      z[200+10j+2]=z[200+10j+1] +(0,b);
      z[200+10j+3]= z[200+10j+2] +(-b,0);
      z[200+10j+4]= z[200+10j+3] +(2b,0);
      z[200+10j+5]= z[200+10j+2] +(0,2c);
      z[200+10j+6]= z[200+10j+5] +(0,0.7a);
      draw z[200+10j+1]--z[200+10j+2];
      draw z[200+10j+3]--z[200+10j+4]--z[200+10j+5]-- cycle;
      draw z[200+10j+5]--z[10j+7];
   endfor
   for j = 2, 4, 8:
     z[400+10j +1]= 0.5[z[10j+9],z[10j+19]];
     z[400+10j +2]= z[400+10j +1]+(0,2b);
     draw z[400+10j +1]--z[400+10j +2];
     draw z[200+10j+1]--z[200+10j+11];
   endfor
   
   z443 = z441+(0,-2b);
   label(btex INPUT etex, z443);
%   z443 = z441+(0,-2b);
   label(btex OUTPUT etex, z149);
    for i=2 upto 9:
       if i = 6:
          draw z[10i ]--z[10i + 7] dashed withdots;       
       else :if i = 7:
          draw z[10i ]--z[10i + 7] dashed withdots; 
       else:
                 draw z[10i ]--z[10i + 7];
      fi
      fi
    endfor
    
    for i= 12 upto 12:
       draw z[10i ]--z[10i + 8] dashed withdots; 
    endfor
    for i= 13 upto 15:
       draw z[10i ]--z[10i + 8];
    endfor
    for i= 16 upto 16:
       draw z[10i ]--z[10i + 8] dashed withdots; 
    endfor

    for j=0 upto 7:
       if j = 6:
          draw z[10 + j ]--z[170 + j ] dashed withdots;
       else:
       	draw z[10 + j ]--z[170 + j ];
       fi
    endfor
    
    for i = 2 upto 9:
       if i = 2 :
         for j = 4, 5, 7:
            circ_large(z[10i + j]);
         endfor
      else: if i = 3:
         for j = 0, 1, 2, 3:
            circ_large(z[10i + j]);
         endfor
      else: if i = 4:
         for j = 2, 3, 7:
            circ_large(z[10i + j]);
         endfor
      else: if i = 5:
         for j = 0,1, 4, 5:
            circ_large(z[10i + j]);
         endfor
      else:if i = 8:
         for j = 1, 3, 5, 7:
            circ_large(z[10i + j]);
         endfor
      else: if i = 9:
         for j = 0, 2, 4:
            circ_large(z[10i + j]);
         endfor
      fi
      fi
      fi
      fi
      fi
      fi
   endfor
   for i = 13 upto 15:
      if i = 13:
         sqrt_large(z[10i + 1]);
         sqrt_large(z[10i + 2]);
         sqrt_large(z[10i + 4]);
      else: if i = 14:
         sqrt_large(z[10i ]);
         sqrt_large(z[10i + 3]);
         sqrt_large(z[10i + 4]);
      else: if i = 15:
         sqrt_large(z[10i + 2]);
         sqrt_large(z[10i + 7]);
      fi
      fi
      fi
   endfor
endfig;

beginfig(8);
%flip-flop
   z0 = (0,0);
%NOR1
   z10 = z0;
   z11 = z10+(0,b);
   z12 = z11+(10b,0);%
   z13 = z10+ (0, 3b);
   z14 =  z13 +(10b,0);%
   z15 = z10 +(9b,0);
   z16 = z15 +(0,4b);
   z17 = z16+(4b,0);
   z18 = z15 + (4b,0);
   z19= z18 + (2b,2b);
   z20 = z19 + (10b,0);
   z21 = 0.5[z12,z14];
   path p, q, r;
   p = z16..z21..z15;
   q = z11--z12;
   r = z13--z14;
   z22 = q intersectionpoint p;
   z23 = r intersectionpoint p;
   z24 = z19 +(b,0);
   z25 = z10 + (7b,-2b);
   z26 = z13 + (5b,0);
   z27 = z26 + (0,2b);
   z28 = z19 +(4b,0);
   z29 = z28 + (0,2b);
   
   draw z11--z22;
   draw z26--z23;
   draw z18..z19..z17--z16..z21..z15-- cycle;
   draw z24--z20;
   draw z19..z24.. cycle;
   draw z26--z27;

%NOR2
   z30 = z0+ (0,8b);
   z31 = z30+(0,b);
   z32 = z31+(10b,0);%
   z33 = z30+ (0, 3b);
   z34 =  z33 +(10b,0);%
   z35 = z30 +(9b,0);
   z36 = z35 +(0,4b);
   z37 = z36+(4b,0);
   z38 = z35 + (4b,0);
   z39= z38 + (2b,2b);
   z40 = z39 + (10b,0);
   z41 = 0.5[z32,z34];
   path p, q, r;
   p = z36..z41..z35;
   q = z31--z32;
   r = z33--z34;
   z42 = q intersectionpoint p;
   z43 = r intersectionpoint p;
   z44 = z39 +(b,0);
   z45 = z30 + (7b,-2b);
   z46 = z31 + (5b,0);
   z47 = z46 + (0,-2b);
   z48 = z39+(4b,0);
   z49 = z48 - (0,2b);

   draw z46--z42;
   draw z33--z43;
   draw z38..z39..z37--z36..z41..z35-- cycle;
   draw z44--z40;
   draw z39..z44.. cycle;
   draw z46--z47;
   draw z48--z49--z27;
   draw z28--z29--z47;
   dotlabel(btex etex,z28);
   dotlabel(btex etex,z48);

   label.lft(btex $R$ etex, z11);
   label.lft(btex $S$ etex, z33);
   label.rt(btex $Q$ etex, z20);   
   label.rt(btex $\bar Q$ etex, z40);
endfig;

numeric b, c;
b = 0.8a;
c = sqrt(3)*b/2;
beginfig(9);
%flip-flop
   z0 = (0,0);
%NOR1
   z10 = z0;
   z11 = z10+(0,b);
   z12 = z11+(10b,0);%
   z13 = z10+ (0, 3b);
   z14 =  z13 +(10b,0);%
   z15 = z10 +(9b,0);
   z16 = z15 +(0,4b);
   z17 = z16+(4b,0);
   z18 = z15 + (4b,0);
   z19= z18 + (2b,2b);
   z20 = z19 + (10b,0);
   z21 = 0.5[z12,z14];
   path p, q, r;
   p = z16..z21..z15;
   q = z11--z12;
   r = z13--z14;
   z22 = q intersectionpoint p;
   z23 = r intersectionpoint p;
   z24 = z19 +(b,0);
   z25 = z10 + (7b,-2b);
   z26 = z13 + (5b,0);
   z27 = z26 + (0,2b);
   z28 = z19 +(4b,0);
   z29 = z28 + (0,2b);
   
   draw z11--z22;
   draw z26--z23;
   draw z18..z19..z17--z16..z21..z15-- cycle;
   draw z24--z20  withcolor red;
   draw z19..z24.. cycle;
   draw z26--z27;

%NOR2
   z30 = z0+ (0,8b);
   z31 = z30+(0,b);
   z32 = z31+(10b,0);%
   z33 = z30+ (0, 3b);
   z34 =  z33 +(10b,0);%
   z35 = z30 +(9b,0);
   z36 = z35 +(0,4b);
   z37 = z36+(4b,0);
   z38 = z35 + (4b,0);
   z39= z38 + (2b,2b);
   z40 = z39 + (10b,0);
   z41 = 0.5[z32,z34];
   path p, q, r;
   p = z36..z41..z35;
   q = z31--z32;
   r = z33--z34;
   z42 = q intersectionpoint p;
   z43 = r intersectionpoint p;
   z44 = z39 +(b,0);
   z45 = z30 + (7b,-2b);
   z46 = z31 + (5b,0);
   z47 = z46 + (0,-2b);
   z48 = z39+(4b,0);
   z49 = z48 - (0,2b);

   draw z46--z42 withcolor red;
   draw z33--z43;
   draw z38..z39..z37--z36..z41..z35-- cycle;
   draw z44--z40 ;
   draw z39..z44.. cycle;
   draw z46--z47  withcolor red;
   draw z48--z49--z27;
   draw z28--z29--z47 withcolor red;
   dotlabel(btex etex,z28);
   dotlabel(btex etex,z48);

   label.lft(btex $R$ etex, z11);
   label.bot(btex $0$ etex, z11);
   label.lft(btex $S$ etex, z33);
   label.top(btex $0$ etex, z33);
   label.rt(btex $Q$ etex, z20);   
   label.bot(btex $1$ etex, z20);
   label.rt(btex $\bar Q$ etex, z40);
   label.top(btex $0$ etex, z40);

%flip-flop2
%NOR1
   z110 = z0 + (36b,0);
   z111 = z110+(0,b);
   z112 = z111+(10b,0);%
   z113 = z110+ (0, 3b);
   z114 =  z113 +(10b,0);%
   z115 = z110 +(9b,0);
   z116 = z115 +(0,4b);
   z117 = z116+(4b,0);
   z118 = z115 + (4b,0);
   z119= z118 + (2b,2b);
   z120 = z119 + (10b,0);
   z121 = 0.5[z112,z114];
   path p, q, r;
   p = z116..z121..z115;
   q = z111--z112;
   r = z113--z114;
   z122 = q intersectionpoint p;
   z123 = r intersectionpoint p;
   z124 = z119 +(b,0);
   z125 = z110 + (7b,-2b);
   z126 = z113 + (5b,0);
   z127 = z126 + (0,2b);
   z128 = z119 +(4b,0);
   z129 = z128 + (0,2b);
   
   draw z111--z122;
   draw z126--z123  withcolor red;
   draw z118..z119..z117--z116..z121..z115-- cycle;
   draw z124--z120 ;
   draw z119..z124.. cycle;
   draw z126--z127  withcolor red;

%NOR2
   z130 = z110+ (0,8b);
   z131 = z130+(0,b);
   z132 = z131+(10b,0);%
   z133 = z130+ (0, 3b);
   z134 =  z133 +(10b,0);%
   z135 = z130 +(9b,0);
   z136 = z135 +(0,4b);
   z137 = z136+(4b,0);
   z138 = z135 + (4b,0);
   z139= z138 + (2b,2b);
   z140 = z139 + (10b,0);
   z141 = 0.5[z132,z134];
   path p, q, r;
   p = z136..z141..z135;
   q = z131--z132;
   r = z133--z134;
   z142 = q intersectionpoint p;
   z143 = r intersectionpoint p;
   z144 = z139 +(b,0);
   z145 = z130 + (7b,-2b);
   z146 = z131 + (5b,0);
   z147 = z146 + (0,-2b);
   z148 = z139+(4b,0);
   z149 = z148 - (0,2b);

   draw z146--z142;
   draw z133--z143;
   draw z138..z139..z137--z136..z141..z135-- cycle;
   draw z144--z140  withcolor red;
   draw z139..z144.. cycle;
   draw z146--z147;
   draw z148--z149--z127  withcolor red;
   draw z128--z129--z147 ;
   dotlabel(btex etex,z128);
   dotlabel(btex etex,z148);

   label.lft(btex $R$ etex, z111);
   label.bot(btex $0$ etex, z111);
   label.lft(btex $S$ etex, z133);
   label.top(btex $0$ etex, z133);
   label.rt(btex $Q$ etex, z120);   
   label.bot(btex $0$ etex, z120);
   label.rt(btex $\bar Q$ etex, z140);
   label.top(btex $1$ etex, z140);
endfig;

beginfig(10);
%flip-flop
   z0 = (0,0);
%flip-flop
   z200 = z0;%(0,20b);
%NOR1
   z210 = z200;
   z211 = z210+(0,b);
   z212 = z211+(10b,0);%
   z213 = z210+ (0, 3b);
   z214 =  z213 +(10b,0);%
   z215 = z210 +(9b,0);
   z216 = z215 +(0,4b);
   z217 = z216+(4b,0);
   z218 = z215 + (4b,0);
   z219= z218 + (2b,2b);
   z220 = z219 + (10b,0);
   z221 = 0.5[z212,z214];
   path p, q, r;
   p = z216..z221..z215;
   q = z211--z212;
   r = z213--z214;
   z222 = q intersectionpoint p;
   z223 = r intersectionpoint p;
   z224 = z219 +(b,0);
   z225 = z210 + (7b,-2b);
   z226 = z213 + (5b,0);
   z227 = z226 + (0,2b);
   z228 = z219 +(4b,0);
   z229 = z228 + (0,2b);
   
   draw z211--z222 ;
   draw z226--z223  withcolor red;
   draw z218..z219..z217--z216..z221..z215-- cycle;
   draw z224--z220;
   draw z219..z224.. cycle;
   draw z226--z227  withcolor red;

%NOR2
   z230 = z200+ (0,8b);
   z231 = z230+(0,b);
   z232 = z231+(10b,0);%
   z233 = z230+ (0, 3b);
   z234 =  z233 +(10b,0);%
   z235 = z230 +(9b,0);
   z236 = z235 +(0,4b);
   z237 = z236+(4b,0);
   z238 = z235 + (4b,0);
   z239= z238 + (2b,2b);
   z240 = z239 + (10b,0);
   z241 = 0.5[z232,z234];
   path p, q, r;
   p = z236..z241..z235;
   q = z231--z232;
   r = z233--z234;
   z242 = q intersectionpoint p;
   z243 = r intersectionpoint p;
   z244 = z239 +(b,0);
   z245 = z230 + (7b,-2b);
   z246 = z231 + (5b,0);
   z247 = z246 + (0,-2b);
   z248 = z239+(4b,0);
   z249 = z248 - (0,2b);

   draw z246--z242 ;
   draw z233--z243  withcolor red;
   draw z238..z239..z237--z236..z241..z235-- cycle;
   draw z244--z240  withcolor red;
   draw z239..z244.. cycle;
   draw z246--z247;
   draw z248--z249--z227  withcolor red;
   draw z228--z229--z247;
   dotlabel(btex etex,z228);
   dotlabel(btex etex,z248);

   label.lft(btex $R$ etex, z211);
   label.bot(btex $0$ etex, z211);
   label.lft(btex $S$ etex, z233);
   label.top(btex $1$ etex, z233);
   label.rt(btex $Q$ etex, z220);   
   label.bot(btex $0$ etex, z220);
   label.rt(btex $\bar Q$ etex, z240);
   label.top(btex $1$ etex, z240);

   z300 = z200+(31b,6b);
   label(btex $\Rightarrow$ etex, z300);

%flip-flop2
%NOR1
   z310 = z200 + (36b,0);
   z311 = z310+(0,b);
   z312 = z311+(10b,0);%
   z313 = z310+ (0, 3b);
   z314 =  z313 +(10b,0);%
   z315 = z310 +(9b,0);
   z316 = z315 +(0,4b);
   z317 = z316+(4b,0);
   z318 = z315 + (4b,0);
   z319= z318 + (2b,2b);
   z320 = z319 + (10b,0);
   z321 = 0.5[z312,z314];
   path p, q, r;
   p = z316..z321..z315;
   q = z311--z312;
   r = z313--z314;
   z322 = q intersectionpoint p;
   z323 = r intersectionpoint p;
   z324 = z319 +(b,0);
   z325 = z310 + (7b,-2b);
   z326 = z313 + (5b,0);
   z327 = z326 + (0,2b);
   z328 = z319 +(4b,0);
   z329 = z328 + (0,2b);
   
   draw z311--z322;
   draw z326--z323 ;
   draw z318..z319..z317--z316..z321..z315-- cycle;
   draw z324--z320  withcolor red;
   draw z319..z324.. cycle;
   draw z326--z327;

%NOR2
   z330 = z310+ (0,8b);
   z331 = z330+(0,b);
   z332 = z331+(10b,0);%
   z333 = z330+ (0, 3b);
   z334 =  z333 +(10b,0);%
   z335 = z330 +(9b,0);
   z336 = z335 +(0,4b);
   z337 = z336+(4b,0);
   z338 = z335 + (4b,0);
   z339= z338 + (2b,2b);
   z340 = z339 + (10b,0);
   z341 = 0.5[z332,z334];
   path p, q, r;
   p = z336..z341..z335;
   q = z331--z332;
   r = z333--z334;
   z342 = q intersectionpoint p;
   z343 = r intersectionpoint p;
   z344 = z339 +(b,0);
   z345 = z330 + (7b,-2b);
   z346 = z331 + (5b,0);
   z347 = z346 + (0,-2b);
   z348 = z339+(4b,0);
   z349 = z348 - (0,2b);

   draw z346--z342  withcolor red;
   draw z333--z343  withcolor red;
   draw z338..z339..z337--z336..z341..z335-- cycle;
   draw z344--z340 ;
   draw z339..z344.. cycle;
   draw z346--z347  withcolor red;
   draw z348--z349--z327;
   draw z328--z329--z347  withcolor red;
   dotlabel(btex etex,z328);
   dotlabel(btex etex,z348);

   label.lft(btex $R$ etex, z311);
   label.bot(btex $0$ etex, z311);
   label.lft(btex $S$ etex, z333);
   label.top(btex $1$ etex, z333);
   label.rt(btex $Q$ etex, z320);   
   label.bot(btex $1$ etex, z320);
   label.rt(btex $\bar Q$ etex, z340);
   label.top(btex $0$ etex, z340);
endfig;

numeric a, b;
a = 8pt;
b = a;
beginfig(11);
   %pulse wave
   numeric d, v;
   d= 1.5a;
   v = 3a;
   z0 = (-d,0);
   for i = 1 upto 12:
      z[i] = z0 + (d*i,0);
      z[20+i] = z[i] +(0,v);
      z[40+i] = z0 +(0,1.5v) + (d*i,0);
      z[60+i] = z[40+i] +(0,v);
   endfor
   drawarrow z2--z11;
   label.rt(btex $t$ etex, z11);
   for i=2 step 2 until 9:
      draw z[i]--z[20 + i]--z[20 + i+1]--z[ i+1]--z[i+2];
   endfor 
   for i=10 upto  10:
      draw z[i]--z[20 + i]--z[20 + i+1];
   endfor 
   
   drawarrow z42--z51;
   label.rt(btex $t$ etex, z51);
   for i=3 step 2 until 9:
      draw z[40 + i]--z[60 + i]--z[60 + i+1]--z[40 + i+1]--z[40 +i+2];
   endfor 
   z60 = 0.5[z41,z61];
   z20 = 0.5[z1,z21];
   label(btex $\phi$ etex,z60);
   label(btex $\bar\phi$ etex,z20);
endfig;


numeric a, b, c;
a = 6pt;
b = 0.8a;
c = sqrt(3)*b/2;

beginfig(12);
   z0 = (0,0);
   z10 = z0 + (b,2b);
   z11 = z10 + (0,10b);
   z100 = z10 + (12b,b);%
   z5 = z0 + (3b,b);

   %AND1
   z20 = z10;
   z21 = z20+(0,b);
   z22 = z21+(6b,0);
   z23 = z20+ (2b, 3b);%
   z24 = z23 +(4b,0);%
   z25 = z20 +(6b,0);
   z26 = z25 +(0,4b);
   z27 = z26 + (4b,0);
   z28 = z25 + (4b,0);
   z29= z28 + (2b,2b);
   z30 = z29 + (4b,0);
   z31 = z20+ (6.5b,-2b);
   draw z21--z22;
   draw z23--z24;
   draw z28..z29..z27--z26--z25-- cycle;
%   draw z29--z30;
   label.lft(btex $R$ etex, z21);
%   label.lft(btex $A$ etex, z23);
   
%AND2
   z70 = z11;
   z71 = z70+(0,b);
   z72 = z71+(6b,0);
   z73 = z70+ (0, 3b);%
   z74 = z73 +(6b,0);%
   z75 = z70 +(6b,0);
   z76 = z75 +(0,4b);
   z77 = z76+(4b,0);
   z78 = z75 + (4b,0);
   z79= z78 + (2b,2b);
   z80 = z79 + (4b,0);
   z81 = z70+ (6.5b,-2b);
   z82 = z72 - (4b,0);%
   draw z82--z72;
   draw z73--z74;
   draw z78..z79..z77--z76--z75-- cycle;
%   draw z79--z80;
%   label.lft(btex $B$ etex, z71);
   label.lft(btex $S$ etex, z73);
   
    draw z5--z23--z82;
    dotlabel(btex etex,z23);
    label.bot(btex $\phi$ etex, z5);

%flip-flop
%NOR1
   z110 = z100;
   z111 = z110+(0,b);
   z112 = z111+(6b,0);%
   z113 = z110+ (0, 3b);
   z114 =  z113 +(6b,0);%
   z115 = z110 +(5b,0);
   z116 = z115 +(0,4b);
   z117 = z116+(4b,0);
   z118 = z115 + (4b,0);
   z119= z118 + (2b,2b);
   z120 = z119 + (10b,0);
   z121 = 0.5[z112,z114];
   path p, q, r;
   p = z116..z121..z115;
   q = z111--z112;
   r = z113--z114;
   z122 = q intersectionpoint p;
   z123 = r intersectionpoint p;
   z124 = z119 +(b,0);
   z125 = z110 + (7b,-2b);
   z126 = z113 + (2b,0);%
   z127 = z126 + (0,2b);
   z128 = z119 +(4b,0);
   z129 = z128 + (0,2b);
   
   draw z111--z122;
   draw z126--z123;
   draw z118..z119..z117--z116..z121..z115-- cycle;
   draw z124--z120;
   draw z119..z124.. cycle;
   draw z126--z127;
%NOR2
   z130 = z100+ (0,8b);
   z131 = z130+(0,b);
   z132 = z131+(6b,0);%
   z133 = z130+ (0, 3b);
   z134 =  z133 +(6b,0);%
   z135 = z130 +(5b,0);
   z136 = z135 +(0,4b);
   z137 = z136+(4b,0);
   z138 = z135 + (4b,0);
   z139= z138 + (2b,2b);
   z140 = z139 + (10b,0);
   z141 = 0.5[z132,z134];
   path p, q, r;
   p = z136..z141..z135;
   q = z131--z132;
   r = z133--z134;
   z142 = q intersectionpoint p;
   z143 = r intersectionpoint p;
   z144 = z139 +(b,0);
   z145 = z130 + (7b,-2b);
   z146 = z131 + (2b,0);%
   z147 = z146 + (0,-2b);
   z148 = z139+(4b,0);
   z149 = z148 - (0,2b);

   draw z146--z142;
   draw z133--z143;
   draw z138..z139..z137--z136..z141..z135-- cycle;
   draw z144--z140;
   draw z139..z144.. cycle;
   draw z146--z147;
   draw z148--z149--z127;
   draw z128--z129--z147;
   dotlabel(btex etex,z128);
   dotlabel(btex etex,z148);

%   label.lft(btex $R$ etex, z111);
%   label.lft(btex $S$ etex, z133);
   label.rt(btex $Q$ etex, z120);   
   label.rt(btex $\bar Q$ etex, z140);
   
   z150 = 0.5[z120, z140];
   z151 = z150 + (5b,0);
   label(btex $=:$ etex, z151); 
   z152 = z151 + (2b,-7b);
   
   z200 = z152;
   z201 = z200 + (5b,4b);
   z202 = z201 + (7b,0);
   z203 = z202 + (0,7b);
   z204 = z203 + (-7b,0);
   draw z201--z202--z203--z204-- cycle;
   z205 = z201 + (0,1.5b);
   z206 = z205 + (-4b,0);
   z207 = z204 + (0,-1.5b);
   z208 = z207 + (-4b,0);
   z210 = z202 + (0,1.5b);
   z211 = z210 + (4b,0);
   z212 = z203 + (0,-1.5b);
   z213 = z212+ (4b,0);  
   z215 = 0.5[z201, z202];
   z216 = z215 + (0,-3b);
   
   draw z205--z206;
   draw z207--z208;
   draw z210--z211;
   draw z212--z213;
   drawarrow z216--z215;
   
   label.rt(btex $R$ etex, z205);
   label.rt(btex $S$ etex, z207);
   label.lft(btex $Q$ etex, z210);
   label.lft(btex $\bar Q$ etex, z212);
   label.bot(btex $\phi $ etex, z216);
endfig;

numeric a, b, c;
a = 5pt;
b = 0.8a;
c = sqrt(3)*b/2;
%beginfig(13);
%   z0 = (0,8b) +(0,30b);
%   z200 = z0 +(35b,0);
%   z400 = z0 -(0,30b);
%
% for k = 0, 200, 400:  
%   z[k + 10] = z[k] + (b,2b);
%   z[k + 11 = z[k + 10 ]+ (0,10b);
%   z300 = z[k + 10]+ (12b,b);%
%   z[k + 5] = z[k]+ (3b,b);
%   z[k + 6] = z[k + 5] + (14b,-10b);
%   %AND1
%   z[k + 20] = z[k + 10;]
%   z[k + 21] = z[k + 20]+(0,b);
%   z[k + 22] = z[k + 21]+(6b,0);
%   z[k + 23] = z[k + 20]+ (2b, 3b);%
%   z[k + 24] = z[k + 23] +(4b,0);%
%   z[k + 25] = z[k + 20] +(6b,0);
%   z[k + 26] = z[k + 25] +(0,4b);
%   z[k + 27] = z[k + 26] + (4b,0);
%   z[k + 28] = z[k + 25] + (4b,0);
%   z[k + 29] = z[k + 28] + (2b,2b);
%   z[k + 30] = z[k + 29] + (4b,0);
%   z[k + 31] = z[k + 20]+ (6.5b,-2b);
%   %AND2
%   z270 = z211;
%   z271 = z270+(0,b);
%   z272 = z271+(6b,0);
%   z273 = z270+ (0, 3b);%
%   z274 = z273 +(6b,0);%
%   z275 = z270 +(6b,0);
%   z276 = z275 +(0,4b);
%   z277 = z276+(4b,0);
%   z278 = z275 + (4b,0);
%   z279= z278 + (2b,2b);
%   z280 = z279 + (4b,0);
%   z281 = z270+ (6.5b,-2b);
%   z282 = z272 - (4b,0);%
%   draw z282--z272 withcolor red;
%   draw z273--z274 withcolor red;
%   draw z278..z279..z277--z276--z275-- cycle;
%   draw z205--z223--z282  withcolor red;
%   dotlabel(btex etex,z223);
%    
%    z232 = z205 + (-1.5b,-8b);
%    for i = 0 upto 7:
%       for j=0 upto 2:
%          z[233 + 3i +j]= z232 +(1.5i*b,3j*b);
%       endfor
%    endfor
%   draw  z233--z239--z240--z246--z245--z251;
%   drawarrow z244--z243;
%%flip-flop
%%NOR1
%   z310 = z300;
%   z311 = z310+(0,b);
%   z312 = z311+(6b,0);%
%   z313 = z310+ (0, 3b);
%   z314 =  z313 +(6b,0);%
%   z315 = z310 +(5b,0);
%   z316 = z315 +(0,4b);
%   z317 = z316+(4b,0);
%   z318 = z315 + (4b,0);
%   z319= z318 + (2b,2b);
%   z320 = z319 + (10b,0);
%   z321 = 0.5[z312,z314];
%   path p, q, r;
%   p = z316..z321..z315;
%   q = z311--z312;
%   r = z313--z314;
%   z322 = q intersectionpoint p;
%   z323 = r intersectionpoint p;
%   z324 = z319 +(b,0);
%   z325 = z310 + (7b,-2b);
%   z326 = z313 + (2b,0);%
%   z327 = z326 + (0,2b);
%   z328 = z319 +(4b,0);
%   z329 = z328 + (0,2b);   
%   draw z311--z322;
%   draw z326--z323;
%   draw z318..z319..z317--z316..z321..z315-- cycle;
%   draw z324--z320 withcolor red;
%   draw z319..z324.. cycle;
%   draw z326--z327 ;
%%NOR2
%   z330 = z300+ (0,8b);
%   z331 = z330+(0,b);
%   z332 = z331+(6b,0);%
%   z333 = z330+ (0, 3b);
%   z334 =  z333 +(6b,0);%
%   z335 = z330 +(5b,0);
%   z336 = z335 +(0,4b);
%   z337 = z336+(4b,0);
%   z338 = z335 + (4b,0);
%   z339= z338 + (2b,2b);
%   z340 = z339 + (10b,0);
%   z341 = 0.5[z332,z334];
%   path p, q, r;
%   p = z336..z341..z335;
%   q = z331--z332;
%   r = z333--z334;
%   z342 = q intersectionpoint p;
%   z343 = r intersectionpoint p;
%   z344 = z339 +(b,0);
%   z345 = z330 + (7b,-2b);
%   z346 = z331 + (2b,0);%
%   z347 = z346 + (0,-2b);
%   z348 = z339+(4b,0);
%   z349 = z348 - (0,2b);
%   draw z346--z342 withcolor red;
%   draw z333--z343 withcolor red;
%   draw z338..z339..z337--z336..z341..z335-- cycle;
%   draw z344--z340 ;
%   draw z339..z344.. cycle;
%   draw z346--z347 withcolor red;
%   draw z348--z349--z327 ;
%   draw z328--z329--z347 withcolor red;
%endfor
%   
%   draw z221--z222;
%   draw z223--z224  withcolor red;
%   draw z228..z229..z227--z226--z225-- cycle;
%   label(btex $(b)$ etex,z[200 + 6]);
%   dotlabel(btex etex,z328);
%   dotlabel(btex etex,z348);
%   
%endfig;

beginfig(13);
   z0 = (0,8b) +(0,30b);
   z10 = z0 + (b,2b);
   z11 = z10 + (0,10b);
   z100 = z10 + (12b,b);%
   z5 = z0 + (3b,b);
   z6 = z5 + (14b,-10b);
   label(btex $(a)$ etex,z6);
   %AND1
   z20 = z10;
   z21 = z20+(0,b);
   z22 = z21+(6b,0);
   z23 = z20+ (2b, 3b);%
   z24 = z23 +(4b,0);%
   z25 = z20 +(6b,0);
   z26 = z25 +(0,4b);
   z27 = z26 + (4b,0);
   z28 = z25 + (4b,0);
   z29= z28 + (2b,2b);
   z30 = z29 + (4b,0);
   z31 = z20+ (6.5b,-2b);
   draw z21--z22;
   draw z23--z24;
   draw z28..z29..z27--z26--z25-- cycle;
   %AND2
   z70 = z11;
   z71 = z70+(0,b);
   z72 = z71+(6b,0);
   z73 = z70+ (0, 3b);%
   z74 = z73 +(6b,0);%
   z75 = z70 +(6b,0);
   z76 = z75 +(0,4b);
   z77 = z76+(4b,0);
   z78 = z75 + (4b,0);
   z79= z78 + (2b,2b);
   z80 = z79 + (4b,0);
   z81 = z70+ (6.5b,-2b);
   z82 = z72 - (4b,0);%
   draw z82--z72;
   draw z73--z74 withcolor red;
   draw z78..z79..z77--z76--z75-- cycle;
   draw z5--z23--z82;
   dotlabel(btex etex,z23);
    
    z32 = z5 + (-1.5b,-8b);
    for i = 0 upto 7:
       for j=0 upto 2:
          z[33 + 3i +j]= z32 +(1.5i*b,3j*b);
       endfor
    endfor
   draw  z33--z39--z40--z46--z45--z51;
   drawarrow z37--z36;
%flip-flop
%NOR1
   z110 = z100;
   z111 = z110+(0,b);
   z112 = z111+(6b,0);%
   z113 = z110+ (0, 3b);
   z114 =  z113 +(6b,0);%
   z115 = z110 +(5b,0);
   z116 = z115 +(0,4b);
   z117 = z116+(4b,0);
   z118 = z115 + (4b,0);
   z119= z118 + (2b,2b);
   z120 = z119 + (10b,0);
   z121 = 0.5[z112,z114];
   path p, q, r;
   p = z116..z121..z115;
   q = z111--z112;
   r = z113--z114;
   z122 = q intersectionpoint p;
   z123 = r intersectionpoint p;
   z124 = z119 +(b,0);
   z125 = z110 + (7b,-2b);
   z126 = z113 + (2b,0);%
   z127 = z126 + (0,2b);
   z128 = z119 +(4b,0);
   z129 = z128 + (0,2b);   
   draw z111--z122;
   draw z126--z123;
   draw z118..z119..z117--z116..z121..z115-- cycle;
   draw z124--z120;
   draw z119..z124.. cycle;
   draw z126--z127;
%NOR2
   z130 = z100+ (0,8b);
   z131 = z130+(0,b);
   z132 = z131+(6b,0);%
   z133 = z130+ (0, 3b);
   z134 = z133 +(6b,0);%
   z135 = z130 +(5b,0);
   z136 = z135 +(0,4b);
   z137 = z136+(4b,0);
   z138 = z135 + (4b,0);
   z139 = z138 + (2b,2b);
   z140 = z139 + (10b,0);
   z141 = 0.5[z132,z134];
   path p, q, r;
   p = z136..z141..z135;
   q = z131--z132;
   r = z133--z134;
   z142 = q intersectionpoint p;
   z143 = r intersectionpoint p;
   z144 = z139 +(b,0);
   z145 = z130 + (7b,-2b);
   z146 = z131 + (2b,0);%
   z147 = z146 + (0,-2b);
   z148 = z139+(4b,0);
   z149 = z148 - (0,2b);
   draw z146--z142;
   draw z133--z143;
   draw z138..z139..z137--z136..z141..z135-- cycle;
   draw z144--z140;
   draw z139..z144.. cycle;
   draw z146--z147;
   draw z148--z149--z127;
   draw z128--z129--z147;
   dotlabel(btex etex,z128);
   dotlabel(btex etex,z148);

   z200 = z0 +(35b,0);
   z210 = z200 + (b,2b);
   z211 = z210 + (0,10b);
   z300 = z210 + (12b,b);%
   z205 = z200 + (3b,b);
   z206 = z205 + (14b,-10b);
   label(btex $(b)$ etex,z206);
   %AND1
   z220 = z210;
   z221 = z220+(0,b);
   z222 = z221+(6b,0);
   z223 = z220+ (2b, 3b);%
   z224 = z223 +(4b,0);%
   z225 = z220 +(6b,0);
   z226 = z225 +(0,4b);
   z227 = z226 + (4b,0);
   z228 = z225 + (4b,0);
   z229= z228 + (2b,2b);
   z230 = z229 + (4b,0);
   z231 = z220+ (6.5b,-2b);
   draw z221--z222;
   draw z223--z224  withcolor red;
   draw z228..z229..z227--z226--z225-- cycle;
   %AND2
   z270 = z211;
   z271 = z270+(0,b);
   z272 = z271+(6b,0);
   z273 = z270+ (0, 3b);%
   z274 = z273 +(6b,0);%
   z275 = z270 +(6b,0);
   z276 = z275 +(0,4b);
   z277 = z276+(4b,0);
   z278 = z275 + (4b,0);
   z279= z278 + (2b,2b);
   z280 = z279 + (4b,0);
   z281 = z270+ (6.5b,-2b);
   z282 = z272 - (4b,0);%
   draw z282--z272 withcolor red;
   draw z273--z274 withcolor red;
   draw z278..z279..z277--z276--z275-- cycle;
   draw z205--z223--z282  withcolor red;
   dotlabel(btex etex,z223);
    
    z232 = z205 + (-1.5b,-8b);
    for i = 0 upto 7:
       for j=0 upto 2:
          z[233 + 3i +j]= z232 +(1.5i*b,3j*b);
       endfor
    endfor
   draw  z233--z239--z240--z246--z245--z251;
   drawarrow z244--z243;
%flip-flop
%NOR1
   z310 = z300;
   z311 = z310+(0,b);
   z312 = z311+(6b,0);%
   z313 = z310+ (0, 3b);
   z314 =  z313 +(6b,0);%
   z315 = z310 +(5b,0);
   z316 = z315 +(0,4b);
   z317 = z316+(4b,0);
   z318 = z315 + (4b,0);
   z319= z318 + (2b,2b);
   z320 = z319 + (10b,0);
   z321 = 0.5[z312,z314];
   path p, q, r;
   p = z316..z321..z315;
   q = z311--z312;
   r = z313--z314;
   z322 = q intersectionpoint p;
   z323 = r intersectionpoint p;
   z324 = z319 +(b,0);
   z325 = z310 + (7b,-2b);
   z326 = z313 + (2b,0);%
   z327 = z326 + (0,2b);
   z328 = z319 +(4b,0);
   z329 = z328 + (0,2b);   
   draw z311--z322;
   draw z326--z323;
   draw z318..z319..z317--z316..z321..z315-- cycle;
   draw z324--z320 withcolor red;
   draw z319..z324.. cycle;
   draw z326--z327 ;
%NOR2
   z330 = z300+ (0,8b);
   z331 = z330+(0,b);
   z332 = z331+(6b,0);%
   z333 = z330+ (0, 3b);
   z334 =  z333 +(6b,0);%
   z335 = z330 +(5b,0);
   z336 = z335 +(0,4b);
   z337 = z336+(4b,0);
   z338 = z335 + (4b,0);
   z339= z338 + (2b,2b);
   z340 = z339 + (10b,0);
   z341 = 0.5[z332,z334];
   path p, q, r;
   p = z336..z341..z335;
   q = z331--z332;
   r = z333--z334;
   z342 = q intersectionpoint p;
   z343 = r intersectionpoint p;
   z344 = z339 +(b,0);
   z345 = z330 + (7b,-2b);
   z346 = z331 + (2b,0);%
   z347 = z346 + (0,-2b);
   z348 = z339+(4b,0);
   z349 = z348 - (0,2b);
   draw z346--z342 withcolor red;
   draw z333--z343 withcolor red;
   draw z338..z339..z337--z336..z341..z335-- cycle;
   draw z344--z340 ;
   draw z339..z344.. cycle;
   draw z346--z347 withcolor red;
   draw z348--z349--z327 ;
   draw z328--z329--z347 withcolor red;
   dotlabel(btex etex,z328);
   dotlabel(btex etex,z348);

   z400 = z0 -(0,30b);
   z410 = z400 + (b,2b);
   z411 = z410 + (0,10b);
   z500 = z410 + (12b,b);%
   z405 = z400 + (3b,b);
   z406 = z405 + (14b,-10b);
   label(btex $(c)$ etex,z406);
   %AND1
   z420 = z410;
   z421 = z420+(0,b);
   z422 = z421+(6b,0);
   z423 = z420+ (2b, 3b);%
   z424 = z423 +(4b,0);%
   z425 = z420 +(6b,0);
   z426 = z425 +(0,4b);
   z427 = z426 + (4b,0);
   z428 = z425 + (4b,0);
   z429= z428 + (2b,2b);
   z430 = z429 + (4b,0);
   z431 = z420+ (6.5b,-2b);
   draw z421--z422;
   draw z423--z424  ;
   draw z428..z429..z427--z426--z425-- cycle;
   %AND2
   z470 = z411;
   z471 = z470+(0,b);
   z472 = z471+(6b,0);
   z473 = z470+ (0, 3b);%
   z474 = z473 +(6b,0);%
   z475 = z470 +(6b,0);
   z476 = z475 +(0,4b);
   z477 = z476+(4b,0);
   z478 = z475 + (4b,0);
   z479= z478 + (2b,2b);
   z480 = z479 + (4b,0);
   z481 = z470+ (6.5b,-2b);
   z482 = z472 - (4b,0);%
   draw z482--z472 ;
   draw z473--z474 withcolor red;
   draw z478..z479..z477--z476--z475-- cycle;
   draw z405--z423--z482;
   dotlabel(btex etex,z423);
    
    z432 = z405 + (-1.5b,-8b);
    for i = 0 upto 7:
       for j=0 upto 2:
          z[433 + 3i +j]= z432 +(1.5i*b,3j*b);
       endfor
    endfor
   draw  z433--z439--z440--z446--z445--z451;
   drawarrow z449--z448;
%flip-flop
%NOR1
   z510 = z500;
   z511 = z510+(0,b);
   z512 = z511+(6b,0);%
   z513 = z510+ (0, 3b);
   z514 =  z513 +(6b,0);%
   z515 = z510 +(5b,0);
   z516 = z515 +(0,4b);
   z517 = z516+(4b,0);
   z518 = z515 + (4b,0);
   z519= z518 + (2b,2b);
   z520 = z519 + (10b,0);
   z521 = 0.5[z512,z514];
   path p, q, r;
   p = z516..z521..z515;
   q = z511--z512;
   r = z513--z514;
   z522 = q intersectionpoint p;
   z523 = r intersectionpoint p;
   z524 = z519 +(b,0);
   z525 = z510 + (7b,-2b);
   z526 = z513 + (2b,0);%
   z527 = z526 + (0,2b);
   z528 = z519 +(4b,0);
   z529 = z528 + (0,2b);   
   draw z511--z522;
   draw z526--z523;
   draw z518..z519..z517--z516..z521..z515-- cycle;
   draw z524--z520  withcolor red;
   draw z519..z524.. cycle;
   draw z526--z527;
%NOR2
   z530 = z500+ (0,8b);
   z531 = z530+(0,b);
   z532 = z531+(6b,0);%
   z533 = z530+ (0, 3b);
   z534 = z533 +(6b,0);%
   z535 = z530 +(5b,0);
   z536 = z535 +(0,4b);
   z537 = z536+(4b,0);
   z538 = z535 + (4b,0);
   z539 = z538 + (2b,2b);
   z540 = z539 + (10b,0);
   z541 = 0.5[z532,z534];
   path p, q, r;
   p = z536..z541..z535;
   q = z531--z532;
   r = z533--z534;
   z542 = q intersectionpoint p;
   z543 = r intersectionpoint p;
   z544 = z539 +(b,0);
   z545 = z530 + (7b,-2b);
   z546 = z531 + (2b,0);%
   z547 = z546 + (0,-2b);
   z548 = z539+(4b,0);
   z549 = z548 - (0,2b);
   draw z546--z542  withcolor red;
   draw z533--z543 ;
   draw z538..z539..z537--z536..z541..z535-- cycle;
   draw z544--z540;
   draw z539..z544.. cycle;
   draw z546--z547 withcolor red;
   draw z548--z549--z527;
   draw z528--z529--z547  withcolor red;
   dotlabel(btex etex,z528);
   dotlabel(btex etex,z548);
endfig;

%numeric b, c;
%b = 0.7a;
%c = sqrt(3)*b/2;

beginfig(14);
   z0 = (15b,3b);
   z1 = z0 + (5b,4b);
   z2 = z1 + (7b,0);
   z3 = z2 + (0,7b);
   z4 = z3 + (-7b,0);
   draw z1--z2--z3--z4-- cycle;
   z5 = z1 + (0,1.5b);
   z6 = z5 + (-11b,0);
   z7 = z4 + (0,-1.5b);
   z8 = z7 + (-16b,0);
   z9= z8 +  (5b,0);
   z10 = z2 + (0,1.5b);
   z11 = z10 + (4b,0);
   z12 = z3 + (0,-1.5b);
   z13 = z12+ (4b,0);  
   z15 = 0.5[z1, z2];
   z16 = z15 + (0,-6b);
   z17 = z16 + (0,2b);
%   z18 = z15 + (b,-b);
%   draw z5--z6;
   draw z7--z8;
   draw z10--z11;
   draw z12--z13;
   drawarrow z16--z15;
   
   label.rt(btex $R$ etex, z5);
   label.rt(btex $S$ etex, z7);
   label.lft(btex $Q$ etex, z10);
   label.lft(btex $\bar Q$ etex, z12);
   label.bot(btex $\phi $ etex, z16);
   
   z20 = z0+(11b,0);
   z21 = z20 + (5b,4b);
   z22 = z21 + (7b,0);
   z23 = z22 + (0,7b);
   z24 = z23 + (-7b,0);
   draw z21--z22--z23--z24-- cycle;
   z25 = z21 + (0,1.5b);
   z26 = z25 + (-4b,0);
   z27 = z24 + (0,-1.5b);
   z28 = z27 + (-4b,0);
   z30 = z22 + (0,1.5b);
   z31 = z30 + (4b,0);
   z32 = z23 + (0,-1.5b);
   z33 = z32+ (6b,0);  
   z35 = 0.5[z21, z22];
   z36 = z35 + (0,-3b);
%   z37 = z35 + (-b,-b);
%   z38 = z35 + (b,-b);
%   draw z25--z26;
%   draw z27--z28;
   draw z30--z31;
   draw z32--z33;
   drawarrow z36--z35;
   %draw z16--z36;
   %draw z17--z36;
   
   label.rt(btex $R$ etex, z25);
   label.rt(btex $S$ etex, z27);
   label.lft(btex $Q$ etex, z30);
   label.lft(btex $\bar Q$ etex, z32);
%   label.bot(btex $\phi $ etex, z36);

   z40 = z17 +(0,-b);;
   z41 = z40+(0,2b);
   z42 = z41+(4b,0);
   z43 = z40+(4b,0);
   z44 = z43 +(4c,2b);
   z45 = z43 +(0,4b);
   z46 = z44+(b,0);
   z47 = z44+(4b,0);
   z48 = z40 + (2b+c,-b);
   draw z41--z42;
   draw z43--z44--z45-- cycle;
   draw z44..z46.. cycle;
   %draw z46--z47;
   draw z46--z36;
      
   z50 = z6 +(0,-2b);;
   z51 = z50+(0,2b);
   z52 = z51+(4b,0);
   z53 = z50+(4b,0);
   z54 = z53 +(4c,2b);
   z55 = z53 +(0,4b);
   z56 = z54+(b,0);
   z57 = z54+(4b,0);
   z58 = z50 + (2b+c,-b);
   draw z51--z52;
   draw z53--z54--z55-- cycle;
   draw z54..z56.. cycle;
   draw z56--z5;
   dotlabel(btex $ $ etex, z41);
   dotlabel(btex $ $ etex, z9);
   draw z9--z51;
   label.lft(btex $D$ etex, z8);
   label.rt(btex $Q$ etex, z33);
   
   z100 = z0 +(33b,5b);
   label(btex $=:$ etex, z100);
   
   z101 = z100 + (6b,-2b);
   z102 = z101 +(6b,0);
   z103= z102 + (0,6b);
   z104 =z103 -(6b,0);
   z105 = 0.5[z101, z104];
   z106 =z105 + (-3b,0);
   z107 = 0.5[z102, z103];
   z108 =z107+ (3b,0); 
   z109 = 0.5[z101, z102];
   z110 = z109 + (0,-3b);
   draw z101--z102--z103--z104-- cycle;
   draw z105--z106;
   draw z107--z108;
   drawarrow  z110--z109;
   label.rt(btex $D$ etex, z105);
   label.lft(btex $Q$ etex, z107);
endfig;

numeric a, b, c;
a = 5pt;
b = 0.8a;
c = sqrt(3)*b/2;

beginfig(15);
   z0 = (15b,8b) + (0, 25b);
   z100 = z0 + (45b, 0);
   z200 = z0 - (0, 25b);
   
   for i = 0 upto 2: 
      z[100i + 1] = z[100i +  0] + (5b,4b);
      z[100i +  2] = z[100i +  1] + (7b,0);
      z[100i +  3] = z[100i +  2] + (0,7b);
      z[100i +  4] = z[100i +  3] + (-7b,0);
      z[100i +  5] = z[100i +  1] + (0,1.5b);
      z[100i +  6] = z[100i +  5] + (-11b,0);
      z[100i +  7] = z[100i +  4] + (0,-1.5b);
      z[100i +  8] = z[100i +  7] + (-16b,0);
      z[100i +  9] = z[100i +  8] +  (5b,0);
      z[100i +  10] = z[100i +  2] + (0,1.5b);
      z[100i +  11] = z[100i +  10] + (4b,0);
      z[100i +  12] = z[100i +  3] + (0,-1.5b);
      z[100i +  13] = z[100i +  12] + (4b,0);  
      z[100i +  15] = 0.5[z[100i +  1], z[100i +  2]];
      z[100i +  16] = z[100i +  15] + (0,-6b);
      z[100i +  17] = z[100i +  16] + (0,2b);
      z[100i +  20] = z[100i +  0]+(11b,0);
      z[100i +  21] = z[100i +  20] + (5b,4b);
      z[100i +  22] = z[100i +  21] + (7b,0);
      z[100i +  23] = z[100i +  22] + (0,7b);
      z[100i +  24] = z[100i +  23] + (-7b,0);
      z[100i +  25] = z[100i +  21] + (0,1.5b);
      z[100i +  26] = z[100i +  25] + (-4b,0);
      z[100i +  27] = z[100i +  24] + (0,-1.5b);
      z[100i +  28] = z[100i +  27] + (-4b,0);
      z[100i +  30] = z[100i +  22] + (0,1.5b);
      z[100i +  31] = z[100i +  30] + (4b,0);
      z[100i +  32] = z[100i +  23] + (0,-1.5b);
      z[100i +  33] = z[100i +  32]+ (6b,0);  
      z[100i +  35] = 0.5[z[100i +  21], z[100i +  22]];
      z[100i +  36] = z[100i +  35] + (0,-3b);
      z[100i +  40] = z[100i +  17] +(0,-b);;
      z[100i +  41] = z[100i +  40]+(0,2b);
      z[100i +  42] = z[100i +  41]+(4b,0);
      z[100i +  43] = z[100i +  40]+(4b,0);
      z[100i +  44] = z[100i +  43] +(4c,2b);
      z[100i +  45] = z[100i +  43] +(0,4b);
      z[100i +  46] = z[100i +  44]+(b,0);
      z[100i +  47] = z[100i +  44]+(4b,0);
      z[100i +  48] = z[100i +  40] + (2b+c,-b);      
      z[100i +  50] = z[100i +  6] +(0,-2b);;
      z[100i +  51] = z[100i +  50]+(0,2b);
      z[100i +  52] = z[100i +  51]+(4b,0);
      z[100i +  53] = z[100i +  50]+(4b,0);
      z[100i +  54] = z[100i +  53] +(4c,2b);
      z[100i +  55] = z[100i +  53] +(0,4b);
      z[100i +  56] = z[100i +  54]+(b,0);
      z[100i +  57] = z[100i +  54]+(4b,0);
      z[100i +  58] = z[100i +  50] + (2b+c,-b);   
      z[100i +60] = z[100i ]+(0,-8b);
       for k = 0 upto 7:
          for j=0 upto 2:
             z[100i +61 + 3k +j]= z[100i +60]  +(1.5k*b,3j*b);
          endfor
       endfor
       z[100i +90] = z[100i +60]+(12b,-2b);
   endfor
   
   for i = 0 upto 2:  
      draw z[100i +  1]--z[100i +  2]--z[100i +  3]--z[100i +  4]-- cycle;
      draw z[100i +  21]--z[100i +  22]--z[100i +  23]--z[100i +  24]-- cycle;
      draw z[100i +  43]--z[100i +  44]--z[100i +  45]-- cycle;
      draw z[100i +  53]--z[100i +  54]--z[100i +  55]-- cycle;
      draw z[100i +  44]..z[100i +  46].. cycle;
      draw z[100i +  54]..z[100i +  56].. cycle;
      label.rt(btex $R$ etex, z[100i +  5]);
      label.rt(btex $S$ etex, z[100i +  7]);
      label.rt(btex $R$ etex, z[100i +  25]);
      label.rt(btex $S$ etex, z[100i +  27]);
      dotlabel(btex $ $ etex, z[100i +  41]);
      dotlabel(btex $ $ etex, z[100i +  9]);
      
      draw z[100i +  7]--z[100i +  8] withcolor red;
      draw z[100i +  56]--z[100i +  5];
      draw z[100i +  9]--z[100i +  51]--z[100i +  52] withcolor red;
      if i = 0:
          draw z[100i +  10]--z[100i +  11] ;
          draw z[100i +  12]--z[100i +  13]  withcolor red;
      else :
         draw z[100i +  10]--z[100i +  11] withcolor red;
         draw z[100i +  12]--z[100i +  13] ;
      fi
      if i = 1:
         drawarrow z[100i +  16]--z[100i +  15] withcolor red;
         draw z[100i +  41]--z[100i +  42] withcolor red; 
         drawarrow z[100i +  36]--z[100i +  35];   
         draw z[100i +  46]--z[100i +  36]; 
      else:
         drawarrow z[100i +  16]--z[100i +  15];
         draw z[100i +  41]--z[100i +  42];     
         draw z[100i +  46]--z[100i +  36] withcolor red;
         drawarrow z[100i +  36]--z[100i +  35] withcolor red;   
      fi
       if i = 2:
          draw z[100i +  30]--z[100i +  31];%
          draw z[100i +  32]--z[100i +  33]  withcolor red;
      else :
          draw z[100i +  30]--z[100i +  31] withcolor red;%
          draw z[100i +  32]--z[100i +  33];
      fi
      draw  z[100i +61]--z[100i +61+6]--z[100i +61+7]--z[100i +61+13]---z[100i +61+12]--z[100i +61+18];
 %  drawarrow z37--z36;

   endfor 
   drawarrow z65--z64;
   drawarrow z172--z171;
   drawarrow z277--z276;
   label(btex $(a)$ etex,z90);
   label(btex $(b)$ etex,z190);
   label(btex $(c)$ etex,z290); 
endfig;

beginfig(16);
   z0 = (0,3b);
   z1 = z0 ;
   z2 = z1 +(6b,0);
   z3= z2 + (0,6b);
   z4 =z3 -(6b,0);
   z5 = 0.5[z1, z4];
   z6 =z5 + (-3b,0);
   z7 = 0.5[z2, z3];
   z8 =z7+ (3b,0); 
   z9 = 0.5[z1, z2];
   z10 = z9 + (0,-3b);
   z11 = z10 - (3b,0);
   draw z1--z2--z3--z4-- cycle;
   draw z5--z6;
   draw z7--z8;
   drawarrow  z10--z9;
   label.rt(btex $D$ etex, z5);
   label.lft(btex $Q$ etex, z7);
   label.lft(btex $\phi$ etex,z11);
   
   z20 = z0 + (9a,0);
   z21 = z20 ;
   z22 = z21 +(6b,0);
   z23= z22 + (0,6b);
   z24 =z23 -(6b,0);
   z25 = 0.5[z21, z24];
   z26 =z25 + (-3b,0);
   z27 = 0.5[z22, z23];
   z28 =z27+ (3b,0); 
   z29 = 0.5[z21, z22];
   z30 = z29 + (0,-3b);
   draw z21--z22--z23--z24-- cycle;
   draw z25--z26;
   draw z27--z28;
   drawarrow  z30--z29;
   label.rt(btex $D$ etex, z25);
   label.lft(btex $Q$ etex, z27);

   z40 = z20 + (9a,0);
   z41 = z40 ;
   z42 = z41 +(6b,0);
   z43= z42 + (0,6b);
   z44 =z43 -(6b,0);
   z45 = 0.5[z41, z44];
   z46 =z45 + (-3b,0);
   z47 = 0.5[z42, z43];
   z48 =z47+ (3b,0); 
   z49 = 0.5[z41, z42];
   z50 = z49 + (0,-3b);
   draw z41--z42--z43--z44-- cycle;
   draw z45--z46;
   draw z47--z48;
   drawarrow  z50--z49;
   label.rt(btex $D$ etex, z45);
   label.lft(btex $Q$ etex, z47);
   draw z11--z50;
endfig;

numeric a, b, c;
a = 5pt;
b = 0.8a;
c = sqrt(3)*b/2;
beginfig(17);
   z0 = (3b,-7b) + (0,20b);
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

numeric b;
b = 0.6a;
beginfig(18);
%flip-flop another circuit
   z0 = (0,0);
%NOR1
   z10 = z0;
   z11 = z10+(0,b);
   z12 = z11+(10b,0);%
   z13 = z10+ (0, 3b);
   z14 =  z13 +(10b,0);%
   z15 = z10 +(9b,0);
   z16 = z15 +(0,4b);
   z17 = z16+(4b,0);
   z18 = z15 + (4b,0);
   z19= z18 + (2b,2b);
   z20 = z19 + (10b,0);
   z21 = 0.5[z12,z14];
   path p, q, r;
   p = z16--z15;
   q = z11--z12;
   r = z13--z14;
   z22 = q intersectionpoint p;
   z23 = r intersectionpoint p;
   z24 = z19 +(b,0);
   z25 = z10 + (7b,-2b);
   z26 = z13 + (5b,0);
   z27 = z26 + (0,2b);
   z28 = z19 +(4b,0);
   z29 = z28 + (0,2b);
   
   draw z11--z22;
   draw z26--z23;
   draw z18..z19..z17--z16--z15-- cycle;
   draw z24--z20;
   draw z19..z24.. cycle;
   draw z26--z27;

%NOR2
   z30 = z0+ (0,8b);
   z31 = z30+(0,b);
   z32 = z31+(10b,0);%
   z33 = z30+ (0, 3b);
   z34 =  z33 +(10b,0);%
   z35 = z30 +(9b,0);
   z36 = z35 +(0,4b);
   z37 = z36+(4b,0);
   z38 = z35 + (4b,0);
   z39= z38 + (2b,2b);
   z40 = z39 + (10b,0);
   z41 = 0.5[z32,z34];
   path p, q, r;
   p = z36--z35;
   q = z31--z32;
   r = z33--z34;
   z42 = q intersectionpoint p;
   z43 = r intersectionpoint p;
   z44 = z39 +(b,0);
   z45 = z30 + (7b,-2b);
   z46 = z31 + (5b,0);
   z47 = z46 + (0,-2b);
   z48 = z39+(4b,0);
   z49 = z48 - (0,2b);

   draw z46--z42;
   draw z33--z43;
   draw z38..z39..z37--z36--z35-- cycle;
   draw z44--z40;
   draw z39..z44.. cycle;
   draw z46--z47;
   draw z48--z49--z27;
   draw z28--z29--z47;
   dotlabel(btex etex,z28);
   dotlabel(btex etex,z48);

   label.lft(btex $R$ etex, z11);
   label.lft(btex $S$ etex, z33);
   label.rt(btex $ Q$ etex, z20);   
   label.rt(btex $\bar Q$ etex, z40);

endfig;

verbatimtex
\end{document}
etex;
end