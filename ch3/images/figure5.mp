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
r = 2a;
R = 5a;

beginfig(1);
   z0 = (-R+3a,3a);
   for i = 1 upto 5: %13x6=78
      z[13i] = z0 + (i*R,0);
      for j = 1 upto 12:
         z[13i + j ] = z[13i]+ (r*cosd(30j + 60), r*sind(30j + 60));
      endfor
   endfor
   z80 = z[13*2 + 1 ] + (0, 2a);
   
   for i = 2, 4:
      path p;
      p = 
         for j = 1 upto 12:
            z[13i + j ]..
         endfor
         cycle;
      draw p;
   endfor
   drawarrow z[13*2 + 5 ]{dir 210}..z[13+4]..{dir -30}z[13*2 + 3 ];
   drawarrow z[13*4 + 9 ]{dir -30}..z[13*5+10]..{dir 210}z[13*4 + 11 ];
   drawarrow z[13*2 + 11 ]{dir 30}..z[13*3+1]..{dir -30}z[13*4 + 3 ];
   drawarrow z[13*4 + 5 ]{dir 210}..z[13*3+7]..{dir 150}z[13*2 + 9 ];
   drawarrow z80--z[13*2 + 1 ];
   
   label(btex $0$ etex, z[13*2]);
   label(btex $1$ etex, z[13*4]);
   label.bot(btex $0$ etex, z[13*2+5]);
   label.bot(btex $0$ etex, z[13*4 + 9]);
   label.top(btex $1$ etex, z[13*2 + 11]);
   label.bot(btex $1$ etex, z[13*4 + 5]);
   label.lft(btex $0$ etex, z[13+4]);
   label.rt(btex $1$ etex, z[13*5+10]);
   label.top(btex $1$ etex, z[13*3+1]);
   label.bot(btex $0$ etex, z[13*3+7].);
   label.top(btex start etex, z80);
endfig;

beginfig(2);
   z0 = (-R+3a,3a);
   for i = 1 upto 5: %13x6=78
      z[13i] = z0 + (i*R,0);
      for j = 1 upto 12:
         z[13i + j ] = z[13i]+ (r*cosd(30j + 60), r*sind(30j + 60));
      endfor
   endfor
   z80 = z[13*2 + 1 ] + (0, 2a);
   
   for i = 2, 4:
      path p;
      p = 
         for j = 1 upto 12:
            z[13i + j ]..
         endfor
         cycle;
      draw p;
   endfor
   drawarrow z[13*2 + 5 ]{dir 210}..z[13+4]..{dir -30}z[13*2 + 3 ];
   drawarrow z[13*4 + 9 ]{dir -30}..z[13*5+10]..{dir 210}z[13*4 + 11 ];
   drawarrow z[13*2 + 11 ]{dir 30}..z[13*3+1]..{dir -30}z[13*4 + 3 ];
   drawarrow z[13*4 + 5 ]{dir 210}..z[13*3+7]..{dir 150}z[13*2 + 9 ];
   drawarrow z80--z[13*2 + 1 ];
   
   label(btex $0$ etex, z[13*2]);
   label(btex $1$ etex, z[13*4]);
   label.bot(btex $0$ etex, z[13*2+5]);
   label.bot(btex $0$ etex, z[13*4 + 9]);
   label.top(btex $1$ etex, z[13*2 + 11]);
   label.bot(btex $1$ etex, z[13*4 + 5]);
   label.lft(btex $0$ etex, z[13+4]);
   label.rt(btex $1$ etex, z[13*5+10]);
   label.top(btex $1$ etex, z[13*3+1]);
   label.bot(btex $0$ etex, z[13*3+7].);
   label.top(btex start etex, z80);
endfig;

numeric  r, R;
r = 2.5a;
R = 4a;
beginfig(3);
   z0 = (-R+r+1.5a, 2R+r);
   for i = 1 upto 7: 
      z[13i] = z0 + (i*R,0);
   endfor
   z[13*8]= z[13*4] + (0, 2R);
   z[13*9]= z[13*4] - (0, 2R);
  for i = 1 upto 9: %13x10=130
     for j = 1 upto 12:
         z[13i + j ] = z[13i]+ (r*cosd(30j + 60), r*sind(30j + 60));
      endfor
   endfor
   z131 = 0.5[z[13*2], z[13*8]] + (-R+a, R-a);
   z132 = 0.5[z[13*6], z[13*8]] + (R-a, R-a);
   z133 = 0.5[z[13*6], z[13*9]] + (R-a, -R+a);
   z134 = 0.5[z[13*9], z[13*2]] + (-R+a, -R+a);
   z135 = 0.5[z[13*9], z[13*8]] + (-r,0); 
   z136 = 0.5[z[13*9], z[13*8]] + (r,0);   
   z137 = z[13*2+2] + (2r*cosd(120), 2r*sind(120));
   for i = 2, 6, 8, 9:
      path p;
      p = 
         for j = 1 upto 12:
            z[13i + j ]..
         endfor
         cycle;
      draw p;
   endfor
   drawarrow z[13*2 + 5 ]{dir 210}..z[13+4]..{dir -30}z[13*2 + 3 ];
   drawarrow z[13*6 + 9 ]{dir -30}..z[13*7+10]..{dir 210}z[13*6 + 11 ];
   drawarrow z[13*9 + 2 ]{dir 120}..{dir 60}z[13*8 + 6 ];
   drawarrow z[13*8 + 8 ]{dir -60}..{dir 240}z[13*9 + 12 ];
   drawarrow z[13*2 + 1 ]{dir 90}..{dir 0}z[13*8 + 4 ];
   drawarrow z[13*8 + 10 ]{dir 0}..{dir -90}z[13*6 + 1 ];
   drawarrow z[13*6 + 7 ]{dir -90}..{dir 180}z[13*9 + 10 ];
   drawarrow z[13*9 + 4 ]{dir 180}..{dir 90}z[13*2 + 7 ];
   drawarrow z137--z[13*2+2];
   label(btex $00$ etex, z[13*2]);
   label(btex $11$ etex, z[13*6]);
   label(btex $10$ etex, z[13*8]);
   label(btex $01$ etex, z[13*9]);  
   label.bot(btex $0$ etex, z[13*2+5]);
   label.lft(btex $0$ etex, z[13+4]);
   label.bot(btex $1$ etex, z[13*6 + 9]);
   label.rt(btex $1$ etex, z[13*7+10]);
   label.urt(btex $1$ etex, z[13*2+1]);
   label(btex $0$ etex, z131);
   label.urt(btex $1$ etex, z[13*8+10]);
   label(btex $0$ etex, z132);
   label.llft(btex $0$ etex, z[13*6+7]);
   label(btex $1$ etex, z133);
   label.llft(btex $0$ etex, z[13*9+4]);
   label(btex $1$ etex, z134);
   label.lft(btex $1$ etex, z[13*9+2]);
   label.lft(btex $1$ etex, z135);
   label.rt(btex $0$ etex, z[13*8+8]);
   label.rt(btex $0$ etex, z136);
   label.top(btex start etex, z137);
endfig;

numeric  a, b, c;
a = 3pt ;
b = 5a;
c = 1.5a;

beginfig(4);
   z0 = (0,20c);
   for i = 1 upto 15:
      for j= 0 upto 20:
      	z[21i + j] = z0 + (i*b, -j*c);
      endfor
   endfor
   
   for j =  7, 8, 9, 10, 11: 
   	z[400 + 10j] = z[3*21 +j]; %21x16=336
	z[400 + 10j+5] = z[13*21 +j];
      if j = 7:
         z[400 + 10j+1] = z[2*21 +j];
         z[400 + 10j+2] = z[2*21 +26 -j];
         z[400 + 10j+3] = z[14*21 +26 -j];
         z[400 + 10j+4] = z[14*21 +j];            
      else: if j = 8:
         z[400 + 10j+1] = 0.8[z[3*21 +j], z[2*21 + j]];
         z[400 + 10j+2] = 0.8[z[3*21 +26 -j], z[2*21 +26- j]];
         z[400 + 10j+3] = 0.8[z[13*21 +26 -j], z[14*21 +26- j]];
         z[400 + 10j+4] = 0.8[z[13*21 +j], z[14*21 + j]];            
      else: if j = 9:
         z[400 + 10j+1] = 0.6[z[3*21 +j], z[2*21 + j]];
         z[400 + 10j+2] = 0.6[z[3*21 +26 -j], z[2*21 +26- j]];
         z[400 + 10j+3] = 0.6[z[13*21 +26 -j], z[14*21 +26- j]];
         z[400 + 10j+4] = 0.6[z[13*21 +j], z[14*21 + j]];   
      else: if j = 10:
         z[400 + 10j+1] = 0.4[z[3*21 +j], z[2*21 + j]];
         z[400 + 10j+2] = 0.4[z[3*21 +26 -j], z[2*21 +26- j]];
         z[400 + 10j+3] = 0.4[z[13*21 +26 -j], z[14*21 +26- j]];
         z[400 + 10j+4] = 0.4[z[13*21 +j], z[14*21 + j]];            
     else :
         z[400 + 10j+1] = 0.2[z[3*21 +j], z[2*21 + j]];
         z[400 + 10j+2] = 0.2[z[3*21 +26 -j], z[2*20 +26- j]];
         z[400 + 10j+3] = 0.2[z[13*21 +26 -j], z[14*21 +26- j]];
         z[400 + 10j+4] = 0.2[z[13*21 +j], z[14*21 + j]];            
	fi
	fi
	fi
	fi;
%	draw z[400 + 10j]--z[400 + 10j+1];
   endfor
   
    for j = 1, 2, 3, 4, 5:
      draw z[21 + j]--z[3*21 + j];
      draw z[13*21 + j]--z[15*21 + j];
   endfor
   for j = 1, 2, 3, 4, 5, 7, 8, 9, 10, 11:
      draw z[5*21 + j]--z[6*21 + j];
      draw z[10*21 + j]--z[11*21 + j];
   endfor 
   for j = 7, 8, 9, 10, 11:
   	draw z[400 + 10j]--z[400 + 10j+1]--z[400 + 10j+2]--z[400 + 10j+3]--z[400 + 10j+4]--z[400 + 10j+5];   
   endfor
   drawarrow z[4*21 + 20]--z[4*21 + 12];
   drawarrow z[12*21 + 20]--z[12*21 + 12];
   
   pickup pencircle scaled 1pt;
   draw z[3*21 + 0]--z[3*21 + 12]--z[5*21 + 12]--z[5*21 + 0]-- cycle;
   draw z[6*21 + 0]--z[6*21 + 12]--z[10*21 + 12]--z[10*21 + 0]-- cycle;
   draw z[11*21 + 0]--z[11*21 + 12]--z[13*21 + 12]--z[13*21 + 0]-- cycle;

   label.top(btex Memory etex, z[4*21 + 0]);
   label.top(btex Logical Circuit etex, z[8*21 + 0]);
   label.top(btex Memory etex, z[12*21 + 0]);
   label.bot(btex $\phi$ etex, z[4*21 + 20]);
   label.bot(btex $\bar \phi$ etex, z[12*21 + 20]);
   label.lft(btex $S$ etex, z[1*21 + 3]);
   label.rt(btex $U$ etex, z[15*21 + 3]);
   label.lft(btex $Q$ etex, z[2*21 + 10]);
   label.rt(btex $Q$ etex, z[14*21 + 10]);
endfig;

numeric  a, b;
a = 4pt ;
b = 2a;

beginfig(5);
   z0 = (0,5b);
   for i = 1 upto 30:
      for j = 0 upto 5:
         z[6i + j] = z0 + (i*b, -j*b);
      endfor
   endfor
   draw z[1*6+0]--z[29*6+0];
   draw z[1*6+2]--z[29*6+2];
   for i = 3 step 2 until 28:
      draw z[6i + 0]--z[6i + 2];
   endfor 
   draw z[6*12 + 2]--z[6*11 + 3]--z[6*11 + 5]--z[6*13 + 5]--z[6*13 + 3]-- cycle;
   label(btex $0$ etex, z[6*2 + 1]);
   label(btex $0$ etex, z[6*4 + 1]);
   label(btex $a$ etex, z[6*6 + 1]);
   label(btex $b$ etex, z[6*8 + 1]);
   label(btex $b$ etex, z[6*10 + 1]);
   label(btex $c$ etex, z[6*12 + 1]);
   label(btex $b$ etex, z[6*14 + 1]);
   label(btex $a$ etex, z[6*16 + 1]);
   label(btex $a$ etex, z[6*18 + 1]);
   label(btex $c$ etex, z[6*20 + 1]);
   label(btex $a$ etex, z[6*22 + 1]);
   label(btex $0$ etex, z[6*24 + 1]);
   label(btex $0$ etex, z[6*26 + 1]);
   label(btex $0$ etex, z[6*28 + 1]);
   label(btex $q$ etex, z[6*12 + 4]);
   label.lft(btex $\leftarrow $ etex, z[6*11 + 4]);
   label.rt(btex $\rightarrow $ etex, z[6*13 + 4]);
endfig;

beginfig(6);
   z0 = (0,3b);
   for i = 1 upto 30:
      for j = 0 upto 5:
         z[6i + j] = z0 + (i*b, -j*b);
      endfor
   endfor
   draw z[1*6+0]--z[29*6+0];
   draw z[1*6+2]--z[29*6+2];
   for i = 3 step 2 until 28:
      draw z[6i + 0]--z[6i + 2];
   endfor 
   draw z[6*4 + 2]--z[6*3 + 3]--z[6*3 + 4]--z[6*5 + 4]--z[6*5 + 3]-- cycle;
   label(btex $0$ etex, z[6*2 + 1]);
   label(btex $E$ etex, z[6*4 + 1]);
   label(btex $($ etex, z[6*6 + 1]);
   label(btex $)$ etex, z[6*8 + 1]);
   label(btex $($ etex, z[6*10 + 1]);
   label(btex $($ etex, z[6*12 + 1]);
   label(btex $)$ etex, z[6*14 + 1]);
   label(btex $($ etex, z[6*16 + 1]);
   label(btex $($ etex, z[6*18 + 1]);
   label(btex $)$ etex, z[6*20 + 1]);
   label(btex $)$ etex, z[6*22 + 1]);
   label(btex $)$ etex, z[6*24 + 1]);
   label(btex $E$ etex, z[6*26 + 1]);
   label(btex $0$ etex, z[6*28 + 1]);
%   label(btex $q$ etex, z[6*12 + 4]);
%   label.lft(btex $\leftarrow $ etex, z[6*11 + 4]);
%   label.rt(btex $\rightarrow $ etex, z[6*13 + 4]);
endfig;


%beginfig(6);
%   z0 = (0,3b);
%   for i = 1 upto 30:
%      for j = 0 upto 5:
%         z[6i + j] = z0 + (i*b, -j*b);
%      endfor
%   endfor
%   draw z[1*6+0]--z[29*6+0];
%   draw z[1*6+2]--z[29*6+2];
%   for i = 3 step 2 until 28:
%      draw z[6i + 0]--z[6i + 2];
%   endfor 
%   draw z[6*6 + 2]--z[6*5 + 3]--z[6*5 + 4]--z[6*7 + 4]--z[6*7 + 3]-- cycle;
%   label(btex $0$ etex, z[6*2 + 1]);
%   label(btex $E$ etex, z[6*4 + 1]);
%   label(btex $($ etex, z[6*6 + 1]);
%   label(btex $)$ etex, z[6*8 + 1]);
%   label(btex $($ etex, z[6*10 + 1]);
%   label(btex $($ etex, z[6*12 + 1]);
%   label(btex $)$ etex, z[6*14 + 1]);
%   label(btex $($ etex, z[6*16 + 1]);
%   label(btex $($ etex, z[6*18 + 1]);
%   label(btex $)$ etex, z[6*20 + 1]);
%   label(btex $)$ etex, z[6*22 + 1]);
%   label(btex $)$ etex, z[6*24 + 1]);
%   label(btex $E$ etex, z[6*26 + 1]);
%   label(btex $0$ etex, z[6*28 + 1]);
%%   label(btex $q$ etex, z[6*12 + 4]);
%%   label.lft(btex $\leftarrow $ etex, z[6*11 + 4]);
%%   label.rt(btex $\rightarrow $ etex, z[6*13 + 4]);
%endfig;

numeric a, r, R;
a = 5pt;
r = 2a;
R = 5a;

beginfig(7);
   z0 = (2r,3a);
   for i = 2, 3, 4, 6, 7, 8: %13x6=78
      z[13i] = z0 + (i*R,0);
      for j = 1 upto 12:
         z[13i + j ] = z[13i]+ (r*cosd(30j + 60), r*sind(30j + 60));
      endfor
   endfor
   z1 = z[13*2 + 4 ] + (-2r, 0);
   z2 = z1 + (-2r, 0);
   z3 = z[13*4 + 1 ] + (0,2r);
   for i = 2, 4, 6:
      path p;
      p = 
         for j = 1 upto 12:
            z[13i + j ]..
         endfor
         cycle;
      draw p;
   endfor
%   drawarrow z[13*2 + 5 ]{dir 210}..z[13+4]..{dir -30}z[13*2 + 3 ];
   drawarrow z[13*2 + 11 ]{dir 30}..z[13*3+1]..{dir -30}z[13*4 + 3 ];
   drawarrow z[13*4 + 5 ]{dir 210}..z[13*3+7]..{dir 150}z[13*2 + 9 ];
   drawarrow z[13*2 + 4 ]..z2;
    drawarrow z3..z[13*4 + 1 ];
   drawarrow z[13*4 + 10 ]..z[13*6+4];
   drawarrow z[13*6 + 11 ]{dir 30}..{dir 0}z[13*8+1];
   drawarrow z[13*6 + 9 ]{dir -30}..{dir 0}z[13*8+7];
   
   label.top(btex start etex, z3);
   label(btex $L$ etex, z[13*2]);
   label(btex $R$ etex, z[13*4]);
   label(btex $L$ etex, z[13*6]);
   label.llft(btex $E$ etex, z[13*2+4]);
   label.lrt(btex $E$ etex, z[13*4 + 10]);
   label.top(btex $($ etex, z[13*2 + 11]);
   label.bot(btex $)$ etex, z[13*4 + 5]);
   label.llft(btex $E$ etex, z[13*2 + 4]);
   label.top(btex $0$ etex, z1);
   label.lft(btex halt etex, z2);
   label.rt(btex halt etex, z[13*8+1]);
   label.rt(btex halt etex, z[13*8+7]);
   label.top(btex $0$ etex, z[13*7+1]);
   label.bot(btex $1$ etex, z[13*7+7]);
   label.top(btex $($ etex, z[13*6+11]);
   label.bot(btex $E$ etex, z[13*6+9]);
   label.top(btex $X$ etex, z[13*3+1]);
   label.bot(btex $X$etex, z[13*3+7].);
%   label.top(btex start etex, z80);
endfig;

numeric  a, b, c;
a = 4pt ;
b = 1.3a;
c = 2a;

beginfig(8);
   z0 = (0,3c);
   for i = 1 upto 58: % 58/2 = 29 
      for j = 0 upto 5:
         z[6i + j] = z0 + (i*b, -j*c);
      endfor
   endfor
   draw z[1*6+0]--z[58*6+0];
   draw z[1*6+2]--z[58*6+2];
   for i  = 3, 5, 11, 13, 19, 25, 27, 33, 39, 41, 47, 53, 55:
      draw z[6i + 0]--z[6i + 2] dashed evenly;
   endfor 
   draw z[6*12 + 2]--z[6*11 + 3]--z[6*11 + 4]--z[6*13 + 4]--z[6*13 + 3]-- cycle;
   label(btex $0$ etex, z[6*2 + 1]);
   label(btex $Y$ etex, z[6*4 + 1]);
   label(btex $1$ etex, z[6*6 + 1]);
   label(btex $1$ etex, z[6*8 + 1]);
   label(btex $0$ etex, z[6*10 + 1]);
   label(btex $X$ etex, z[6*12 + 1]);
   label(btex $0$ etex, z[6*14 + 1]);
   label(btex $1$ etex, z[6*16 + 1]);
   label(btex $1$ etex, z[6*18 + 1]);
   label(btex $1$ etex, z[6*20 + 1]);
   label(btex $0$ etex, z[6*22 + 1]);
   label(btex $1$ etex, z[6*24 + 1]);
   label(btex $X$ etex, z[6*26 + 1]);
   label(btex $1$ etex, z[6*28 + 1]);
   label(btex $1$ etex, z[6*30 + 1]);
   label(btex $0$ etex, z[6*32 + 1]);
   label(btex $0$ etex, z[6*34 + 1]);
   label(btex $1$ etex, z[6*36 + 1]);
   label(btex $1$ etex, z[6*38 + 1]);
   label(btex $X$ etex, z[6*40 + 1]);
   label(btex $0$ etex, z[6*42 + 1]);
   label(btex $1$ etex, z[6*44 + 1]);
   label(btex $0$ etex, z[6*46 + 1]);
   label(btex $1$ etex, z[6*48 + 1]);
   label(btex $0$ etex, z[6*50 + 1]);
   label(btex $1$ etex, z[6*52 + 1]);
   label(btex $Y$ etex, z[6*54 + 1]);
   label(btex $0$ etex, z[6*56 + 1]);
endfig;

beginfig(10);
   z0 = (0,14c);
   for i = 1 upto 58:
      for j = 0 upto 15:
         z[16i + j] = z0 + (i*b, -j*c);
      endfor
   endfor
   draw z[1*16+0]--z[58*16+0];
   draw z[1*16+2]--z[58*16+2];
   for i  = 3, 5, 11, 13, 19, 25, 27, 33, 39, 41, 47, 53, 55:
      draw z[16i + 0]--z[16i + 2] dashed evenly;
   endfor 
   draw z[16*14 + 2]--z[16*13 + 3]--z[16*13 + 4]--z[16*15 + 4]--z[16*15 + 3]-- cycle;
   label(btex $0$ etex, z[16*2 + 1]);
   label(btex $Y$ etex, z[16*4 + 1]);
   label(btex $1$ etex, z[16*6 + 1]);
   label(btex $B$ etex, z[16*8 + 1]);
   label(btex $A$ etex, z[16*10 + 1]);
   label(btex $X$ etex, z[16*12 + 1]);
   label(btex $0$ etex, z[16*14 + 1]);
   label(btex $1$ etex, z[16*16 + 1]);
   label(btex $1$ etex, z[16*18 + 1]);
   label(btex $1$ etex, z[16*20 + 1]);
   label(btex $0$ etex, z[16*22 + 1]);
   label(btex $1$ etex, z[16*24 + 1]);
   label(btex $X$ etex, z[16*26 + 1]);
   label(btex $1$ etex, z[16*28 + 1]);
   label(btex $1$ etex, z[16*30 + 1]);
   label(btex $0$ etex, z[16*32 + 1]);
   label(btex $0$ etex, z[16*34 + 1]);
   label(btex $1$ etex, z[16*36 + 1]);
   label(btex $1$ etex, z[16*38 + 1]);
   label(btex $X$ etex, z[16*40 + 1]);
   label(btex $0$ etex, z[16*42 + 1]);
   label(btex $1$ etex, z[16*44 + 1]);
   label(btex $0$ etex, z[16*46 + 1]);
   label(btex $1$ etex, z[16*48 + 1]);
   label(btex $0$ etex, z[16*50 + 1]);
   label(btex $1$ etex, z[16*52 + 1]);
   label(btex $Y$ etex, z[16*54 + 1]);
   label(btex $0$ etex, z[16*56 + 1]);

   draw z[1*16+5]--z[58*16+5];
   draw z[1*16+5+2]--z[58*16+5+2];
   for i  = 3, 5, 11, 13, 19, 25, 27, 33, 39, 41, 47, 53, 55:
      draw z[16i +5+ 0]--z[16i +5+ 2] dashed evenly;
   endfor    
   draw z[16*28 +5+ 2]--z[16*27 +5+ 3]--z[16*27 +5+ 4]--z[16*29 +5+ 4]--z[16*29 +5+ 3]-- cycle;
   label(btex $0$ etex, z[16*2 +5+ 1]);
   label(btex $Y$ etex, z[16*4 +5+ 1]);
   label(btex $1$ etex, z[16*6 +5+ 1]);
   label(btex $B$ etex, z[16*8 +5+ 1]);
   label(btex $A$ etex, z[16*10 +5+ 1]);
   label(btex $X$ etex, z[16*12 +5+ 1]);
   label(btex $A$ etex, z[16*14 +5+ 1]);
   label(btex $B$ etex, z[16*16 +5+ 1]);
   label(btex $B$ etex, z[16*18 +5+ 1]);
   label(btex $B$ etex, z[16*20 +5+ 1]);
   label(btex $A$ etex, z[16*22 +5+ 1]);
   label(btex $B$ etex, z[16*24 +5+ 1]);
   label(btex $X$ etex, z[16*26 +5+ 1]);
   label(btex $B$ etex, z[16*28 +5+ 1]);
   label(btex $1$ etex, z[16*30 +5+ 1]);
   label(btex $0$ etex, z[16*32 +5+ 1]);
   label(btex $0$ etex, z[16*34 +5+ 1]);
   label(btex $1$ etex, z[16*36 +5+ 1]);
   label(btex $1$ etex, z[16*38 +5+ 1]);
   label(btex $X$ etex, z[16*40 +5+ 1]);
   label(btex $0$ etex, z[16*42 +5+ 1]);
   label(btex $1$ etex, z[16*44 +5+ 1]);
   label(btex $0$ etex, z[16*46 +5+ 1]);
   label(btex $1$ etex, z[16*48 +5+ 1]);
   label(btex $0$ etex, z[16*50 +5+ 1]);
   label(btex $1$ etex, z[16*52 +5+ 1]);
   label(btex $Y$ etex, z[16*54 +5+ 1]);
   label(btex $0$ etex, z[16*56 +5+ 1]);
   
   draw z[1*16+10]--z[58*16+10];
   draw z[1*16+10+2]--z[58*16+10+2];
   for i  = 3, 5, 11, 13, 19, 25, 27, 33, 39, 41, 47, 53, 55:
      draw z[16i +10+ 0]--z[16i +10+ 2] dashed evenly;
   endfor    
   draw z[16*12 +10+ 2]--z[16*11 +10+ 3]--z[16*11 +10+ 4]--z[16*13 +10+ 4]--z[16*13 +10+ 3]-- cycle;
      label(btex $0$ etex, z[16*2 +10+ 1]);
   label(btex $Y$ etex, z[16*4 +10+ 1]);
   label(btex $1$ etex, z[16*6 +10+ 1]);
   label(btex $1$ etex, z[16*8 +10+ 1]);
   label(btex $0$ etex, z[16*10 +10+ 1]);
   label(btex $X$ etex, z[16*12 +10+ 1]);
   label(btex $A$ etex, z[16*14 +10+ 1]);
   label(btex $B$ etex, z[16*16 +10+ 1]);
   label(btex $B$ etex, z[16*18 +10+ 1]);
   label(btex $B$ etex, z[16*20 +10+ 1]);
   label(btex $A$ etex, z[16*22 +10+ 1]);
   label(btex $B$ etex, z[16*24 +10+ 1]);
   label(btex $X$ etex, z[16*26 +10+ 1]);
   label(btex $B$ etex, z[16*28 +10+ 1]);
   label(btex $B$ etex, z[16*30 +10+ 1]);
   label(btex $A$ etex, z[16*32 +10+ 1]);
   label(btex $0$ etex, z[16*34 +10+ 1]);
   label(btex $1$ etex, z[16*36 +10+ 1]);
   label(btex $1$ etex, z[16*38 +10+ 1]);
   label(btex $X$ etex, z[16*40 +10+ 1]);
   label(btex $0$ etex, z[16*42 +10+ 1]);
   label(btex $1$ etex, z[16*44 +10+ 1]);
   label(btex $0$ etex, z[16*46 +10+ 1]);
   label(btex $1$ etex, z[16*48 +10+ 1]);
   label(btex $0$ etex, z[16*50 +10+ 1]);
   label(btex $1$ etex, z[16*52 +10+ 1]);
   label(btex $Y$ etex, z[16*54 +10+ 1]);
   label(btex $0$ etex, z[16*56 +10+ 1]);

endfig;
beginfig(12);
   z0 = (0,14c);
   for i = 1 upto 58:
      for j = 0 upto 15:
         z[16i + j] = z0 + (i*b, -j*c);
      endfor
   endfor
   draw z[1*16+0]--z[58*16+0];
   draw z[1*16+2]--z[58*16+2];
   for i  = 3, 5, 11, 13, 19, 25, 27, 33, 39, 41, 47, 53, 55:
      draw z[16i + 0]--z[16i + 2] dashed evenly;
   endfor 
   draw z[16*6 + 2]--z[16*5 + 3]--z[16*5 + 4]--z[16*7 + 4]--z[16*7 + 3]-- cycle;
   label(btex $0$ etex, z[16*2 + 1]);
   label(btex $Y$ etex, z[16*4 + 1]);
   label(btex $A$ etex, z[16*6 + 1]);
   label(btex $1$ etex, z[16*8 + 1]);
   label(btex $0$ etex, z[16*10 + 1]);
   label(btex $X$ etex, z[16*12 + 1]);
   label(btex $A$ etex, z[16*14 + 1]);
   label(btex $B$ etex, z[16*16 + 1]);
   label(btex $B$ etex, z[16*18 + 1]);
   label(btex $B$ etex, z[16*20 + 1]);
   label(btex $A$ etex, z[16*22 + 1]);
   label(btex $B$ etex, z[16*24 + 1]);
   label(btex $X$ etex, z[16*26 + 1]);
   label(btex $B$ etex, z[16*28 + 1]);
   label(btex $B$ etex, z[16*30 + 1]);
   label(btex $A$ etex, z[16*32 + 1]);
   label(btex $A$ etex, z[16*34 + 1]);
   label(btex $1$ etex, z[16*36 + 1]);
   label(btex $1$ etex, z[16*38 + 1]);
   label(btex $X$ etex, z[16*40 + 1]);
   label(btex $0$ etex, z[16*42 + 1]);
   label(btex $1$ etex, z[16*44 + 1]);
   label(btex $0$ etex, z[16*46 + 1]);
   label(btex $1$ etex, z[16*48 + 1]);
   label(btex $0$ etex, z[16*50 + 1]);
   label(btex $1$ etex, z[16*52 + 1]);
   label(btex $Y$ etex, z[16*54 + 1]);
   label(btex $0$ etex, z[16*56 + 1]);

   draw z[1*16+5]--z[58*16+5];
   draw z[1*16+5+2]--z[58*16+5+2];
   for i  = 3, 5, 11, 13, 19, 25, 27, 33, 39, 41, 47, 53, 55:
      draw z[16i +5+ 0]--z[16i +5+ 2] dashed evenly;
   endfor    
   draw z[16*12 +5+ 2]--z[16*11 +5+ 3]--z[16*11 +5+ 4]--z[16*13 +5+ 4]--z[16*13 +5+ 3]-- cycle;
   label(btex $0$ etex, z[16*2 +5+ 1]);
   label(btex $Y$ etex, z[16*4 +5+ 1]);
   label(btex $A$ etex, z[16*6 +5+ 1]);
   label(btex $B$ etex, z[16*8 +5+ 1]);
   label(btex $B$ etex, z[16*10 +5+ 1]);
   label(btex $X$ etex, z[16*12 +5+ 1]);
   label(btex $A$ etex, z[16*14 +5+ 1]);
   label(btex $B$ etex, z[16*16 +5+ 1]);
   label(btex $B$ etex, z[16*18 +5+ 1]);
   label(btex $B$ etex, z[16*20 +5+ 1]);
   label(btex $A$ etex, z[16*22 +5+ 1]);
   label(btex $B$ etex, z[16*24 +5+ 1]);
   label(btex $X$ etex, z[16*26 +5+ 1]);
   label(btex $B$ etex, z[16*28 +5+ 1]);
   label(btex $B$ etex, z[16*30 +5+ 1]);
   label(btex $A$ etex, z[16*32 +5+ 1]);
   label(btex $A$ etex, z[16*34 +5+ 1]);
   label(btex $B$ etex, z[16*36 +5+ 1]);
   label(btex $B$ etex, z[16*38 +5+ 1]);
   label(btex $X$ etex, z[16*40 +5+ 1]);
   label(btex $0$ etex, z[16*42 +5+ 1]);
   label(btex $1$ etex, z[16*44 +5+ 1]);
   label(btex $0$ etex, z[16*46 +5+ 1]);
   label(btex $1$ etex, z[16*48 +5+ 1]);
   label(btex $0$ etex, z[16*50 +5+ 1]);
   label(btex $1$ etex, z[16*52 +5+ 1]);
   label(btex $Y$ etex, z[16*54 +5+ 1]);
   label(btex $0$ etex, z[16*56 +5+ 1]);

   draw z[1*16+10]--z[58*16+10];
   draw z[1*16+10+2]--z[58*16+10+2];
   for i  = 3, 5, 11, 13, 19, 25, 27, 33, 39, 41, 47, 53, 55:
      draw z[16i +10+ 0]--z[16i +10+ 2] dashed evenly;
   endfor    
   draw z[16*12 +10+ 2]--z[16*11 +10+ 3]--z[16*11 +10+ 4]--z[16*13 +10+ 4]--z[16*13 +10+ 3]-- cycle;
   label(btex $0$ etex, z[16*2 +10+ 1]);
   label(btex $Y$ etex, z[16*4 +10+ 1]);
   label(btex $A$ etex, z[16*6 +10+ 1]);
   label(btex $B$ etex, z[16*8 +10+ 1]);
   label(btex $B$ etex, z[16*10 +10+ 1]);
   label(btex $X$ etex, z[16*12 +10+ 1]);
   label(btex $A$ etex, z[16*14 +10+ 1]);
   label(btex $B$ etex, z[16*16 +10+ 1]);
   label(btex $B$ etex, z[16*18 +10+ 1]);
   label(btex $B$ etex, z[16*20 +10+ 1]);
   label(btex $A$ etex, z[16*22 +10+ 1]);
   label(btex $B$ etex, z[16*24 +10+ 1]);
   label(btex $X$ etex, z[16*26 +10+ 1]);
   label(btex $B$ etex, z[16*28 +10+ 1]);
   label(btex $B$ etex, z[16*30 +10+ 1]);
   label(btex $A$ etex, z[16*32 +10+ 1]);
   label(btex $A$ etex, z[16*34 +10+ 1]);
   label(btex $B$ etex, z[16*36 +10+ 1]);
   label(btex $B$ etex, z[16*38 +10+ 1]);
   label(btex $X$ etex, z[16*40 +10+ 1]);
   label(btex $A$ etex, z[16*42 +10+ 1]);
   label(btex $1$ etex, z[16*44 +10+ 1]);
   label(btex $0$ etex, z[16*46 +10+ 1]);
   label(btex $1$ etex, z[16*48 +10+ 1]);
   label(btex $0$ etex, z[16*50 +10+ 1]);
   label(btex $1$ etex, z[16*52 +10+ 1]);
   label(btex $Y$ etex, z[16*54 +10+ 1]);
   label(btex $0$ etex, z[16*56 +10+ 1]);
endfig;

beginfig(13);
   z0 = (0,19c);
   for i = 1 upto 58:
      for j = 0 upto 20:
         z[21i + j] = z0 + (i*b, -j*c);
      endfor
   endfor
   draw z[1*21+0]--z[58*21+0];
   draw z[1*21+2]--z[58*21+2];
   for i  = 5, 7, 15, 17, 23, 25, 31, 33, 39, 45, 47, 49, 55, 57:
      draw z[21i + 0]--z[21i + 2] dashed evenly;
   endfor 
   draw z[21*24 + 2]--z[21*23 + 3]--z[21*23 + 4]--z[21*25 + 4]--z[21*25 + 3]-- cycle;
   label(btex $\dots$ etex, z[21*2 + 1]);
   label(btex $0$ etex, z[21*4 + 1]);
   label(btex $M$ etex, z[21*6 + 1]);
   label(btex $0$ etex, z[21*8 + 1]);
   label(btex $0$ etex, z[21*10 + 1]);
   label(btex $\cdots$ etex, z[21*12 + 1]);
   label(btex $1$ etex, z[21*14 + 1]);
   label(btex $Y$ etex, z[21*16+ 1]);
   label(btex $A$ etex, z[21*18+ 1]);
   label(btex $B$ etex, z[21*20 + 1]);
   label(btex $B$ etex, z[21*22 + 1]);
   label(btex $X$ etex, z[21*24 + 1]);
   label(btex $A$ etex, z[21*26 + 1]);
   label(btex $\dots$ etex, z[21*28 + 1]);
   label(btex $B$ etex, z[21*30 + 1]);
   label(btex $X$ etex, z[21*32 + 1]);
   label(btex $B$ etex, z[21*34 + 1]);
   label(btex $B$ etex, z[21*36 + 1]);
   label(btex $A$ etex, z[21*38 + 1]);
   label(btex $A$ etex, z[21*40 + 1]);
   label(btex $B$ etex, z[21*42 + 1]);
   label(btex $B$ etex, z[21*44 + 1]);
   label(btex $B$ etex, z[21*46 + 1]);
   label(btex $X$ etex, z[21*48 + 1]);
   label(btex $1$ etex, z[21*50 + 1]);
   label(btex $\dots$ etex, z[21*52 + 1]);
   label(btex $0$ etex, z[21*54 + 1]);
   label(btex $Y$ etex, z[21*56 + 1]);
%   label(btex $0$ etex, z[21*56 + 1]);

   draw z[1*21+5]--z[58*21+5];
   draw z[1*21+5+2]--z[58*21+5+2];
%   for i  = 3, 5, 11, 13, 19, 25, 27, 33, 39, 41, 47, 53, 55:
%      draw z[21i +5+ 0]--z[21i +5+ 2] dashed evenly;
%   endfor  
   for i  = 5, 7, 15, 17, 23, 25, 31, 33, 39, 45, 47, 49, 55, 57:
      draw z[21i +5+ 0]--z[21i +5+ 2] dashed evenly;
   endfor   
   draw z[21*50 +5+ 2]--z[21*49 +5+ 3]--z[21*49 +5+ 4]--z[21*51 +5+ 4]--z[21*51 +5+ 3]-- cycle;
   
   label(btex $\dots$ etex, z[21*2 +5+ 1]);
   label(btex $0$ etex, z[21*4 +5+ 1]);
   label(btex $B$ etex, z[21*6 +5+ 1]);
   label(btex $0$ etex, z[21*8 +5+ 1]);
   label(btex $0$ etex, z[21*10 +5+ 1]);
   label(btex $\cdots$ etex, z[21*12 +5+ 1]);
   label(btex $1$ etex, z[21*14 +5+ 1]);
   label(btex $Y$ etex, z[21*16 +5+ 1]);
   label(btex $0$ etex, z[21*18 +5+ 1]);
   label(btex $1$ etex, z[21*20 +5+ 1]);
   label(btex $1$ etex, z[21*22 +5+ 1]);
   label(btex $X$ etex, z[21*24 +5+ 1]);
   label(btex $A$ etex, z[21*26 +5+ 1]);
   label(btex $\dots$ etex, z[21*28 +5+ 1]);
   label(btex $B$ etex, z[21*30 +5+ 1]);
   label(btex $X$ etex, z[21*32 +5+ 1]);
   label(btex $B$ etex, z[21*34 +5+ 1]);
   label(btex $B$ etex, z[21*36 +5+ 1]);
   label(btex $A$ etex, z[21*38 +5+ 1]);
   label(btex $A$ etex, z[21*40 +5+ 1]);
   label(btex $B$ etex, z[21*42 +5+ 1]);
   label(btex $B$ etex, z[21*44 +5+ 1]);
   label(btex $B$ etex, z[21*46 +5+ 1]);
   label(btex $X$ etex, z[21*48 +5+ 1]);
   label(btex $1$ etex, z[21*50 +5+ 1]);
   label(btex $\dots$ etex, z[21*52 +5+ 1]);
   label(btex $0$ etex, z[21*54 +5+ 1]);
   label(btex $Y$ etex, z[21*56 +5+ 1]);

   draw z[1*21+10]--z[58*21+10];
   draw z[1*21+10+2]--z[58*21+10+2];
   for i  = 5, 7, 15, 17, 23, 25, 31, 33, 39, 45, 47, 49, 55, 57:
      draw z[21i +10 + 0]--z[21i +10 + 2] dashed evenly;
   endfor   
   draw z[21*22 +10+ 2]--z[21*21 +10+ 3]--z[21*21 +10+ 4]--z[21*23+10+ 4]--z[21*23 +10+ 3]-- cycle;
   label(btex $\dots$ etex, z[21*2 +10 + 1]);
   label(btex $0$ etex, z[21*4 +10 + 1]);
   label(btex $B$ etex, z[21*6 +10 + 1]);
   label(btex $0$ etex, z[21*8 +10 + 1]);
   label(btex $0$ etex, z[21*10 +10 + 1]);
   label(btex $\cdots$ etex, z[21*12 +10 + 1]);
   label(btex $1$ etex, z[21*14 +10 + 1]);
   label(btex $Y$ etex, z[21*16 +10 + 1]);
   label(btex $0$ etex, z[21*18 +10 + 1]);
   label(btex $1$ etex, z[21*20 +10 + 1]);
   label(btex $V$ etex, z[21*22 +10 + 1]);
   label(btex $X$ etex, z[21*24 +10 + 1]);
   label(btex $0$ etex, z[21*26 +10 + 1]);
   label(btex $\dots$ etex, z[21*28 +10 + 1]);
   label(btex $1$ etex, z[21*30 +10 + 1]);
   label(btex $X$ etex, z[21*32 +10 + 1]);
   label(btex $1$ etex, z[21*34 +10 + 1]);
   label(btex $1$ etex, z[21*36 +10 + 1]);
   label(btex $0$ etex, z[21*38 +10 + 1]);
   label(btex $0$ etex, z[21*40 +10 + 1]);
   label(btex $1$ etex, z[21*42 +10 + 1]);
   label(btex $1$ etex, z[21*44 +10 + 1]);
   label(btex $1$ etex, z[21*46 +10 + 1]);
   label(btex $X$ etex, z[21*48 +10 + 1]);
   label(btex $1$ etex, z[21*50 +10 + 1]);
   label(btex $\dots$ etex, z[21*52 +10 + 1]);
   label(btex $0$ etex, z[21*54 +10 + 1]);
   label(btex $Y$ etex, z[21*56 +10 + 1]);
   
   draw z[1*21+15]--z[58*21+15];
   draw z[1*21+15+2]--z[58*21+15+2];
   for i  = 7, 9, 15, 17, 23, 25, 31, 33, 39, 45, 47, 49, 55, 57:
      draw z[21i +15 + 0]--z[21i +15 + 2] dashed evenly;
   endfor   
   draw z[21*24 +15+ 2]--z[21*23 +15+ 3]--z[21*23 +15+ 4]--z[21*25+15+ 4]--z[21*25 +15+ 3]-- cycle;
   label(btex $\dots$ etex, z[21*2 +15 + 1]);
   label(btex $0$ etex, z[21*4 +15 + 1]);
   label(btex $1$ etex, z[21*6 +15 + 1]);
   label(btex $M$ etex, z[21*8 +15 + 1]);
   label(btex $0$ etex, z[21*10 +15 + 1]);
   label(btex $\cdots$ etex, z[21*12 +15 + 1]);
   label(btex $1$ etex, z[21*14 +15 + 1]);
   label(btex $Y$ etex, z[21*16 +15 + 1]);
   label(btex $0$ etex, z[21*18 +15 + 1]);
   label(btex $1$ etex, z[21*20 +15 + 1]);
   label(btex $0$ etex, z[21*22 +15 + 1]);
   label(btex $X$ etex, z[21*24 +15 + 1]);
   label(btex $0$ etex, z[21*26 +15 + 1]);
   label(btex $\dots$ etex, z[21*28 +15 + 1]);
   label(btex $1$ etex, z[21*30 +15 + 1]);
   label(btex $X$ etex, z[21*32 +15 + 1]);
   label(btex $1$ etex, z[21*34 +15 + 1]);
   label(btex $1$ etex, z[21*36 +15 + 1]);
   label(btex $0$ etex, z[21*38 +15 + 1]);
   label(btex $0$ etex, z[21*40 +15 + 1]);
   label(btex $1$ etex, z[21*42 +15 + 1]);
   label(btex $1$ etex, z[21*44 +15 + 1]);
   label(btex $1$ etex, z[21*46 +15 + 1]);
   label(btex $X$ etex, z[21*48 +15 + 1]);
   label(btex $1$ etex, z[21*50 +15 + 1]);
   label(btex $\dots$ etex, z[21*52 +15 + 1]);
   label(btex $0$ etex, z[21*54 +15 + 1]);
   label(btex $Y$ etex, z[21*56 +15 + 1]);

endfig;


numeric a, r, R;
a = 5pt;
r = 2a;
R = 5a;
beginfig(9);
   def circ_large(expr p) = 
      begingroup
          save a, r, t, l, b, q; 
          numeric a;
          pair b, r, t, l;
          path q;
          a = 10pt;
          r = p +  a*(1,0);
          t = p + a*(0,1);
          l = p + a*(-1,0);
          b = p + a*(0,-1);
          q = r..t..l..b.. cycle;
          draw q;
      endgroup
   enddef;
   
   z0 = (0,5R);
   for i = 1 upto 9: 
      for j= 1 upto 10:
         z[130i+13j] = z0 + (i*R,-1.5j*R);
         for k = 1 upto 12:
            z[130i+13j + k] 
               = z[130i+13j]+ (r*cosd(30k + 60), r*sind(30k + 60));
         endfor
      endfor
   endfor
   z1 = z[130*2+13*2]+7a*(cosd(105), sind(105));
   z2 = z[130*2+13*2]+7a*(cosd(-105), sind(-105));
   z3 = z[130*4+13*2]+ 5a*(cosd(87), sind(90));
   z4 = z[130*4+13*2]+ 5a*(cosd(-87), sind(-90));
   z5 = z[130*6+13*2]+ 5a*(cosd(90), sind(90));
   z6 = z[130*6+13*2]+ 5a*(cosd(-90), sind(-90));
   z10 = 0.5[z[130*5+13*3], z[130*5+13*4]];
   z11 = 0.5[z[130*3+13*3], z[130*3+13*4]];
   
   % serach
   circ_large(z[130*5+13*1] );
   for i = 2, 4, 6, 8:
      circ_large(z[130*i + 13*2] );
   endfor
   circ_large(z[130*5+13*3] );
   drawarrow z[130+13*2]--z[130*2+13*2+4];
   drawarrow z[130*2+13*2+2]{dir 120}..z1..{dir -90}z[130*2+13*2+1];
   drawarrow z[130*2+13*2+6]{dir -120}..z2..{dir 90}z[130*2+13*2+7];
   drawarrow z[130*2+ 13*2+10]--z[130*4+13*2+4];
   drawarrow z[130*4+ 13*2+1]{dir 90}..{dir 0}z[130*5+13+4];
   drawarrow z[130*4+ 13*2+7]{dir -90}..{dir 0}z[130*5+13*3+4];
   drawarrow z[130*5+13+9]{dir -30}..{dir -90}z[130*6+ 13*2+1];
   drawarrow z[130*5+13*3+11]{dir 30}..{dir 90}z[130*6+ 13*2+7];
   drawarrow z[130*6+ 13*2+4]--z[130*4+13*2+10];
   drawarrow z[130*5+13+11]{dir 30}..{dir -60}z[130*8+ 13*2+2];
   drawarrow z[130*5+13*3+9]{dir -30}..{dir 60}z[130*8+ 13*2+6];
   drawarrow z[130*8+ 13*2+1]{dir 90}..{dir -120}z[130*2+13*2+12];
   drawarrow z[130*8+ 13*2+10]--z[130*9+ 13*2];
%   drawarrow z[130*4+13*2+5]{dir -150}..z10{dir 0}..{dir -90}z[130*7+13*4+1];
   
   label(btex $L$ etex, z[130*2 +13*2]);
   label.lft(btex $0$ etex, z[130*2 +13*2+2]);
   label.top(btex $A$ etex, z1);
   label.lft(btex $1$ etex, z[130*2 +13*2+6]);
   label.bot(btex $B$ etex, z2);
   label.urt(btex $Y$ etex, z[130*2 +13*2+10]);
   label.urt(btex $A$ etex, z[130*4 +13*2+1]);
   label.lft(btex $0$ etex, z3);
   label.lrt(btex $B$ etex, z[130*4 +13*2+7]);
   label.lft(btex $1$ etex, z4);
   label.bot(btex $X$ etex, z[130*4 +13*2+5]);

   label(btex $R$ etex, z[130*5 +13*1]);
   label.bot(btex $0$ etex, z[130*5 +13*1+9]);
   label(btex $A$ etex, z5);
   label.top(btex $1$ etex, z[130*5 +13*1+11]);

   label(btex $R$ etex, z[130*5 +13*3]);
   label.top(btex $1$ etex, z[130*5 +13*3+11]);
   label(btex $B$ etex, z6);
   label.bot(btex $0$ etex, z[130*5 +13*3+9]);

   label(btex $R$ etex, z[130*4 +13*2]);
   label(btex $L$ etex, z[130*6 +13*2]);
   label(btex $R$ etex, z[130*8+13*2]);
   label.ulft(btex $Y$ etex, z[130*6 +13*2+4]);
   label.urt(btex $X$ etex, z[130*8+13*2+1]);
   label.lrt(btex $Y$ etex, z[130*8+13*2+10]);

   drawarrow z[130*4+13*2+5]{dir -150}..{dir -90}z[130*3+13*3];
   
   label.lft(btex start etex, z[130 +13*2]);
   label.rt(btex halt etex, z[130*9 + 13*2]);
   label.bot(btex copy etex, z[130*3+13*3]);
endfig;

beginfig(11);
     def circ_large(expr p) = 
      begingroup
          save a, r, t, l, b, q; 
          numeric a;
          pair b, r, t, l;
          path q;
          a = 10pt;
          r = p +  a*(1,0);
          t = p + a*(0,1);
          l = p + a*(-1,0);
          b = p + a*(0,-1);
          q = r..t..l..b.. cycle;
          draw q;
      endgroup
   enddef;
   
   z0 = (1.5R,7R);
   for i = 1 upto 7: 
      for j= 1 upto 5:
         z[130i+13j] = z0 + (i*R,-1.5j*R);
         for k = 1 upto 12:
            z[130i+13j + k] 
               = z[130i+13j]+ (r*cosd(30k + 60), r*sind(30k + 60));
         endfor
      endfor
   endfor
   for i = 2, 6:
      circ_large(z[130*i + 13*3] );
   endfor
   for i = 3, 5:
      circ_large(z[130*i + 13*2] );
   endfor
   for i = 3, 5:
      circ_large(z[130*i + 13*4] );
   endfor
   z2 = 0.5[z[130*2+13*3+1],z[130*3+13*2+5]];
   z3 = 0.5[z[130*5+13*2+9],z[130*6+13*3+1]];
   z4 = 0.5[z[130*2+13*3+7],z[130*3+13*4+3]];
   z5 = 0.5[z[130*5+13*4+9],z[130*6+13*3+7]];
   label(btex $R$ etex, z[130*2 +13*3]);
   label(btex $L$ etex, z[130*3 +13*2]);
   label(btex $R$ etex, z[130*5 +13*2]);
   label(btex $L$ etex, z[130*3 +13*4]);
   label(btex $R$ etex, z[130*5 +13*4]);
   label(btex $R$ etex, z[130*6 +13*3]);   
   drawarrow z[130*1+13*3+4]--z[130*2+13*3+4]; 
   drawarrow z[130*6+13*3+4]--z[130*2+13*3+10]; 
   drawarrow z[130*2+13*3+1]{dir 90}..{dir 20}z[130*3+13*2+5]; 
   drawarrow z[130*3+13*2+10]--z[130*5+13*2+4]; 
   drawarrow z[130*5+13*2+9]{dir -20}..{dir -90}z[130*6+13*3+1]; 
   drawarrow z[130*5+13*2+1]{dir 90}..{dir 0}z[130*6+13*1+7]; 
   drawarrow z[130*2+13*3+7]{dir -90}..{dir -20}z[130*3+13*4+3]; 
   drawarrow z[130*3+13*4+10]--z[130*5+13*4+4]; 
   drawarrow z[130*5+13*4+10]{dir 20}..{dir 90}z[130*6+13*3+7]; 
   drawarrow z[130*5+13*4+7]{dir -90}..{dir 0}z[130*6+13*5+1]; 
   label.ulft(btex $0$ etex, z[130*2 +13*3+1]);
   label.llft(btex $1$ etex, z[130*2 +13*3+7]);
   label.urt(btex $Y$ etex, z[130*3 +13*2+10]);
   label.urt(btex $0$ etex, z[130*5+13*2+9]);
   label.bot(btex $1$ etex, z[130*5+13*2+9]);
   label.lrt(btex $Y$ etex, z[130*3 +13*4+10]);
   label.lrt(btex $0$ etex, z[130*5+13*4+10]);
   label.top(btex $\, 1$ etex, z[130*5+13*4+10]);
   label.ulft(btex $X$ etex, z[130*6 +13*3+4]);
   label.ulft(btex $X$ etex, z[130*5 +13*2+1]);
   label.llft(btex $X$ etex, z[130*5 +13*4+7]);%
   label(btex $A$ etex, z2);
   label(btex $A$ etex, z3);
   label(btex $B$ etex, z4);
   label(btex $B$ etex, z5);
   label.lft(btex from search etex, z[130*1 +13*3+4]);
   label.rt(btex halt etex, z[130*6+13*1+7]);
   label.rt(btex halt etex, z[130*6+13*5+1]);

endfig;

beginfig(14);
   def circ_large(expr p) = 
      begingroup
          save a, r, t, l, b, q; 
          numeric a;
          pair b, r, t, l;
          path q;
          a = 10pt;
          r = p +  a*(1,0);
          t = p + a*(0,1);
          l = p + a*(-1,0);
          b = p + a*(0,-1);
          q = r..t..l..b.. cycle;
          draw q;
      endgroup
   enddef;
   
   z0 = (0,15.5R);
   for i = 1 upto 9: 
      for j= 1 upto 10:
            z[150i+13j] = z0 + (i*R,-1.5j*R);
          for k = 1 upto 12: %
               z[150i+13j + k] 
               = z[150i+13j]+ (r*cosd(30k + 60), r*sind(30k + 60));
         endfor
      endfor
   endfor
   z1 = z[150*2+13*2]+7a*(cosd(105), sind(105));
   z2 = z[150*2+13*2]+7a*(cosd(-105), sind(-105));
   z3 = z[150*4+13*2]+ 5a*(cosd(87), sind(90));
   z4 = z[150*4+13*2]+ 5a*(cosd(-87), sind(-90));
   z5 = z[150*6+13*2]+ 5a*(cosd(90), sind(90));
   z6 = z[150*6+13*2]+ 5a*(cosd(-90), sind(-90));
%   z10 = 0.5[z[150*5+13*3], z[150*5+13*4]];
%   z11 = 0.5[z[150*3+13*3], z[150*3+13*4]];
%   
   % serach
   circ_large(z[150*5+13*1] );
   for i = 2, 4, 6, 8:
      circ_large(z[150*i + 13*2] );
   endfor
   circ_large(z[150*5+13*3] );
   drawarrow z[150+13*2]--z[150*2+13*2+4];
   drawarrow z[150*2+13*2+2]{dir 120}..z1..{dir -90}z[150*2+13*2+1];
   drawarrow z[150*2+13*2+6]{dir -120}..z2..{dir 90}z[150*2+13*2+7];
   drawarrow z[150*2+ 13*2+10]--z[150*4+13*2+4];
   drawarrow z[150*4+ 13*2+1]{dir 90}..{dir 0}z[150*5+13+4];
   drawarrow z[150*4+ 13*2+7]{dir -90}..{dir 0}z[150*5+13*3+4];
   drawarrow z[150*5+13+9]{dir -30}..{dir -90}z[150*6+ 13*2+1];
   drawarrow z[150*5+13*3+11]{dir 30}..{dir 90}z[150*6+ 13*2+7];
   drawarrow z[150*6+ 13*2+4]--z[150*4+13*2+10];
   drawarrow z[150*5+13+11]{dir 30}..{dir -60}z[150*8+ 13*2+2];
   drawarrow z[150*5+13*3+9]{dir -30}..{dir 60}z[150*8+ 13*2+6];
   drawarrow z[150*8+ 13*2+1]{dir 90}..{dir -120}z[150*2+13*2+12];
   drawarrow z[150*8+ 13*2+10]--z[150*9+ 13*2];
      
   label.lft(btex start etex, z[150 +13*2]);
   label.rt(btex halt etex, z[150*9 + 13*2]);
   label(btex $L$ etex, z[150*2 +13*2]);
   label.lft(btex $0$ etex, z[150*2 +13*2+2]);
   label.top(btex $A$ etex, z1);
   label.lft(btex $1$ etex, z[150*2 +13*2+6]);
   label.bot(btex $B$ etex, z2);
   label.urt(btex $Y$ etex, z[150*2 +13*2+10]);
   label.urt(btex $A$ etex, z[150*4 +13*2+1]);
   label.rt(btex $0$ etex, z3);
   label.lrt(btex $B$ etex, z[150*4 +13*2+7]);
   label.rt(btex $1$ etex, z4);
   label.lft(btex $X$ etex, z[150*4 +13*2+6]);%

   label(btex $R$ etex, z[150*5 +13*1]);
   label.bot(btex $0$ etex, z[150*5 +13*1+9]);
   label(btex $A$ etex, z5);
   label.top(btex $1$ etex, z[150*5 +13*1+11]);

   label(btex $R$ etex, z[150*5 +13*3]);
   label.top(btex $1$ etex, z[150*5 +13*3+11]);
   label(btex $B$ etex, z6);
   label.bot(btex $0$ etex, z[150*5 +13*3+9]);

   label(btex $R$ etex, z[150*4 +13*2]);
   label(btex $L$ etex, z[150*6 +13*2]);
   label(btex $R$ etex, z[150*8+13*2]);
   label.ulft(btex $Y$ etex, z[150*6 +13*2+4]);
   label.urt(btex $X$ etex, z[150*8+13*2+1]);
   label.lrt(btex $Y$ etex, z[150*8+13*2+10]);

   %copy and  execute
   for i = 3:
      circ_large(z[150*i + 13*3] );
   endfor
   for i = 2, 4, 7:
      circ_large(z[150*i + 13*4] );
   endfor
   for i =  6, 8:
      circ_large(z[150*i + 13*5] );
   endfor
   for i =  2, 4, 6, 8:
      circ_large(z[150*i + 13*6] );
   endfor
   for i =  7:
      circ_large(z[150*i + 13*7] );
   endfor
    for i = 2, 4, 6, 8:
      circ_large(z[150*i + 13*8] );
   endfor  
    for i = 3, 7:
      circ_large(z[150*i+13*9] );
   endfor
   for i = 5:
      circ_large(z[150*i+13*10] );
   endfor
   
   z10 = 0.5[z[150*5+13*3], z[150*5+13*4]];
%   z11 = 0.5[z[150*3+13*3], z[150*3+13*4]];
   z12 = z[150*7+13*4]+ 5a*(cosd(-140),sind(-140));
   z13 = z[150*7+13*4]+ 5a*(cosd(-40),sind(-40));
   z14 = z[150*7+13*7]+ 5a*(cosd(140),sind(140));
   z15 = z[150*7+13*7]+ 5a*(cosd(40),sind(40));
   z16 = z[150*7+13*9]+ 7a*(cosd(195),sind(195));
   z17 = z[150*7+13*9]+ 7a*(cosd(-15),sind(-15));
   z18 = z[150*7+13*9]+ 6a*(cosd(-120),sind(-120));   
   z19 =z[150*3+13*9]+ 6a*(cosd(-60),sind(-60));
   z20 = z[150*6 +13*8] +6a*(cosd(-45),sind(-45));%
   z21 = z[150*8 +13*8] +6a*(cosd(-135),sind(-135));% 
   z22 = z[150*3 +13*9] +6a*(cosd(-15),sind(-15));%%%
   z23 = z[150*3 +13*9] +6a*(cosd(-165),sind(-165));%%%  
   drawarrow z[150*4+13*2+6]{dir -120}..z10{dir 0}..{dir -90}z[150*7+13*4+1];%
   drawarrow z[150*3+13*3+1]{dir 90}..{dir 150}z[150*2+13*2+9];%
   
 %copy part
   drawarrow z[150*7+13*4+5]{dir -150}..{dir -90}z[150*6+13*5+1];  
   drawarrow z[150*7+13*4+9]{dir -30}..{dir -90}z[150*8+13*5+1];
   drawarrow z[150*6+13*5+7]--z[150*6+13*6+1]; 
   drawarrow z[150*8+13*5+7]--z[150*8+13*6+1]; 
   drawarrow z[150*6+13*6+7]{dir -90}..{dir -30}z[150*7+13*7+3];
   drawarrow z[150*8+13*6+7]{dir -90}..{dir -150}z[150*7+13*7+11];
   drawarrow z[150*7+13*7+1]--z[150*7+13*4+7];
   drawarrow z[150*6+13*6+5]{dir -150}..{dir -60}z[150*6+13*8+2];%
   drawarrow z[150*8+13*6+9]{dir -30}..{dir -120}z[150*8+13*8+12];%
   drawarrow z[150*6+13*8+7]{dir -90}..{dir -60}z[150*7+13*9+2];
   drawarrow z[150*8+13*8+7]{dir -90}..{dir -120}z[150*7+13*9+12];
   drawarrow z[150*7+13*9+4]{dir 180}..z16..{dir 30}z[150*7+13*9+5];
   drawarrow z[150*7+13*9+10]{dir 0}..z17..{dir 150}z[150*7+13*9+9];
   drawarrow z[150*7+13*9+7]{dir -90}..{dir 180}z[150*5+13*10+10]; 
   drawarrow z[150*5+13*10+4]{dir 180}..{dir 90}z[150*3+13*9+7];%%%%
   
   label(btex $R$ etex, z[150*7 +13*4]);
   label(btex $L$ etex, z[150*6 +13*5]);
   label(btex $L$ etex, z[150*8 +13*5]);
   label(btex $R$ etex, z[150*6 +13*6]);
   label(btex $R$ etex, z[150*8 +13*6]);
   label(btex $R$ etex, z[150*7 +13*7]);
   label(btex $L$ etex, z[150*6 +13*8]);
   label(btex $L$ etex, z[150*8 +13*8]);%
   label(btex $R$ etex, z[150*7 +13*9]);%
   label(btex $R$ etex, z[150*5 +13*10]);%%% 

   label.bot(btex $0$ etex, z[150*7+13*4+5]);
   label.bot(btex $1$ etex, z[150*7+13*4+9]);
   label.ulft(btex $A$ etex,z12); 
   label.urt(btex $B$ etex,z13); 
   label.llft(btex $Y$ etex, z[150*6 +13*5+7]);
   label.lrt(btex $Y$ etex, z[150*8 +13*5+7]);
   label.llft(btex $0$ etex, z[150*6 +13*6+7]);
   label.lrt(btex $1$ etex, z[150*6 +13*6+7]);
   label.llft(btex $0$ etex, z[150*8 +13*6+7]);
   label.lrt(btex $1$ etex, z[150*8 +13*6+7]);
   label.llft(btex $A$ etex,z14); 
   label.lrt(btex $B$ etex,z15); 
   label.urt(btex $X$ etex, z[150*7 +13*7+1]);
   label.lft(btex $X$ etex, z[150*6+13*6+5]);
   label.rt(btex $X$ etex, z[150*8+13*6+9]);
   label.rt(btex $X$ etex, z[150*8+13*6+9]);
   %z[150*5+13*10+4]
   label.llft(btex $0$ etex, z[150*5+13*10+4]);
   label.ulft(btex $1$ etex, z[150*5+13*10+4]);
   label.rt(btex $1$ etex, z22); %  
   label.lft(btex $0$ etex, z23);   %
   label.bot(btex $A$ etex, z[150*3+13*9+5]);%
   label.bot(btex $B$ etex, z[150*3+13*9+9]);%
   label.ulft(btex $A$ etex, z20); %  
   label.urt(btex $B$ etex, z21);   %
   label.llft(btex $M$ etex, z[150*6+13*8+7]);
   label.lrt(btex $M$ etex, z[150*8+13*8+7]);
   %%
   label.ulft(btex $A$ etex, z[150*7+13*9+4]);
   label.urt(btex $B$ etex, z[150*7+13*9+10]);
  
   label.ulft(btex $A$ etex, z[150*7+13*9+4]);
   label.urt(btex $B$ etex, z[150*7+13*9+10]);
   label.lft(btex $0$ etex, z16);
   label.rt(btex $1$ etex, z17);
   label.lrt(btex $X$ etex, z[150*7+13*9+7]);
   
   %tape manipulation
   drawarrow z[150*3+13*9+9]{dir -30}..z22..{dir 180}z[150*3+13*9+10];%%
   drawarrow z[150*3+13*9+5]{dir -150}..z23..{dir 0}z[150*3+13*9+4];%%
   drawarrow z[150*3 + 13*9+3]{dir 150}..{dir 90}z[150*2 + 13*8+7];
   drawarrow z[150*3 + 13*9+11]{dir 30}..{dir 90}z[150*4 + 13*8+7];
   drawarrow z[150*2 + 13*8+1]--z[150*2 + 13*6+7];
   drawarrow z[150*4 + 13*8+1]--z[150*4 + 13*6+7];
   drawarrow z[150*2 + 13*8+12]--z[150*4 + 13*6+6];
   drawarrow z[150*4 + 13*8+2]--z[150*2 + 13*6+8];
   drawarrow z[150*2 + 13*6+1]--z[150*2 + 13*4+7];
   drawarrow z[150*4 + 13*6+1]--z[150*4 + 13*4+7];
   drawarrow z[150*2 + 13*6+12]--z[150*4 + 13*4+6];
   drawarrow z[150*4 + 13*6+2]--z[150*2 + 13*4+8];
   drawarrow z[150*2 + 13*4+1]{dir 90}..{dir 30}z[150*3 + 13*3+5];%
   drawarrow z[150*4 + 13*4+1]{dir 90}..{dir 150}z[150*3 + 13*3+9];
  
   z28 = z[150*3 + 13*9] + 6a*(cosd(20),sind(20)); 
   z29 = z[150*3 + 13*9] + 6a*(cosd(160),sind(160));
   z30 = 0.4[z[150*2+13*8], z[150*2+13*6]];
   z31 = 0.4[z[150*2+13*8], z[150*4+13*6]];
   z32 = 0.4[z[150*4+13*8], z[150*4+13*6]];
   z33 = 0.4[z[150*4+13*8], z[150*2+13*6]];
   z34 = 0.4[z[150*2+13*6], z[150*2+13*4]];
   z35 = 0.4[z[150*2+13*6], z[150*4+13*4]];
   z36 = 0.4[z[150*4+13*6], z[150*4+13*4]];
   z37 = 0.4[z[150*4+13*6], z[150*2+13*4]];
   z38 = z[150*2 + 13*4] + 5a*(cosd(60),sind(60)); 
   z39 = z[150*4 + 13*4] + 5a*(cosd(120),sind(120));

   label(btex $V$ etex, z28);
   label(btex $V$ etex, z29);  
   label(btex $L$ etex, z[150*3 + 13*9]);
   label(btex $L$ etex, z[150*2 + 13*8]);
   label(btex $L$ etex, z[150*4 + 13*8]);
   label(btex $R$ etex, z[150*2 + 13*6]);
   label(btex $L$ etex, z[150*4 + 13*6]);   
   label(btex $R$ etex, z[150*2 + 13*4]);
   label(btex $R$ etex, z[150*4 + 13*4]);   
   label(btex $R$ etex, z[150*3 + 13*3]);   %
   label.top(btex $0$ etex, z[150*3 + 13*9+3]);
   label.top(btex $1$ etex, z[150*3 + 13*9+11]); 
   label.ulft(btex $B$ etex, z[150*2 + 13*8+1]);
   label.rt(btex $A$ etex, z[150*2 + 13*8+11]);
   label.urt(btex $A$ etex, z[150*4 + 13*8+1]);
   label.lft(btex $B$ etex, z[150*4 + 13*8+3]);
   label.ulft(btex $0$ etex, z[150*2 + 13*6+1]);
   label.rt(btex $1$ etex, z[150*2 + 13*6+11]);
   label.urt(btex $1$ etex, z[150*4 + 13*6+1]);
   label.lft(btex $0$ etex, z[150*4 + 13*6+3]);
   label.ulft(btex $V$ etex, z[150*2 + 13*4+1]);
   label.urt(btex $V$ etex, z[150*4 + 13*4+1]);
   label.ulft(btex $X$ etex, z[150*3 + 13*3+1]);

   label.lft(btex $0$ etex, z30);
   label.lft(btex $0$ etex, z31);
   label.rt(btex $1$ etex, z32);
   label.rt(btex $1$ etex, z33);
   label.lft(btex $M$ etex, z34);
   label.lft(btex $M$ etex, z35);
   label.rt(btex $M$ etex, z36);
   label.rt(btex $M$ etex, z37);
   label(btex $0$ etex, z38);
   label(btex $1$ etex, z39);
endfig;

beginfig(15);
   def circ_large(expr p) = 
      begingroup
          save a, r, t, l, b, q; 
          numeric a;
          pair b, r, t, l;
          path q;
          a = 10pt;
          r = p +  a*(1,0);
          t = p + a*(0,1);
          l = p + a*(-1,0);
          b = p + a*(0,-1);
          q = r..t..l..b.. cycle;
          draw q;
      endgroup
   enddef;
   
   z0 = (0,14.5R);
   for i = 1 upto 9: 
      for j= 1 upto 9:
            z[150i+13j] = z0 + (i*R,-1.5j*R);
          for k = 1 upto 12: %
               z[150i+13j + k] 
               = z[150i+13j]+ (r*cosd(30k + 60), r*sind(30k + 60));
         endfor
      endfor
   endfor
   z1 = z[150*2+13*2]+7a*(cosd(105), sind(105));
   z2 = z[150*2+13*2]+7a*(cosd(-105), sind(-105));
   z3 = z[150*4+13*2]+ 5a*(cosd(87), sind(90));
   z4 = z[150*4+13*2]+ 5a*(cosd(-87), sind(-90));
   z5 = z[150*6+13*2]+ 5a*(cosd(90), sind(90));
   z6 = z[150*6+13*2]+ 5a*(cosd(-90), sind(-90));
%   z10 = 0.5[z[150*5+13*3], z[150*5+13*4]];
%   z11 = 0.5[z[150*3+13*3], z[150*3+13*4]];
%   
   % serach
   circ_large(z[150*5+13*1] );
   for i = 2, 4, 6, 8:
      circ_large(z[150*i + 13*2] );
   endfor
   circ_large(z[150*5+13*3] );
   drawarrow z[150+13*2]--z[150*2+13*2+4];
   drawarrow z[150*2+13*2+2]{dir 120}..z1..{dir -90}z[150*2+13*2+1];
   drawarrow z[150*2+13*2+6]{dir -120}..z2..{dir 90}z[150*2+13*2+7];
   drawarrow z[150*2+ 13*2+10]--z[150*4+13*2+4];
   drawarrow z[150*4+ 13*2+1]{dir 90}..{dir 0}z[150*5+13+4];
   drawarrow z[150*4+ 13*2+7]{dir -90}..{dir 0}z[150*5+13*3+4];
   drawarrow z[150*5+13+9]{dir -30}..{dir -90}z[150*6+ 13*2+1];
   drawarrow z[150*5+13*3+11]{dir 30}..{dir 90}z[150*6+ 13*2+7];
   drawarrow z[150*6+ 13*2+4]--z[150*4+13*2+10];
   drawarrow z[150*5+13+11]{dir 30}..{dir -60}z[150*8+ 13*2+2];
   drawarrow z[150*5+13*3+9]{dir -30}..{dir 60}z[150*8+ 13*2+6];
   drawarrow z[150*8+ 13*2+1]{dir 90}..{dir -120}z[150*2+13*2+12];
   drawarrow z[150*8+ 13*2+10]--z[150*9+ 13*2];
      
   label.lft(btex start etex, z[150 +13*2]);
   label.rt(btex halt etex, z[150*9 + 13*2]);
   label(btex $L$ etex, z[150*2 +13*2]);
   label.lft(btex $0$ etex, z[150*2 +13*2+2]);
   label.top(btex $A$ etex, z1);
   label.lft(btex $1$ etex, z[150*2 +13*2+6]);
   label.bot(btex $B$ etex, z2);
   label.urt(btex $Y$ etex, z[150*2 +13*2+10]);
   label.urt(btex $A$ etex, z[150*4 +13*2+1]);
   label.rt(btex $0$ etex, z3);
   label.lrt(btex $B$ etex, z[150*4 +13*2+7]);
   label.rt(btex $1$ etex, z4);
   label.lft(btex $X$ etex, z[150*4 +13*2+6]);%

   label(btex $R$ etex, z[150*5 +13*1]);
   label.bot(btex $0$ etex, z[150*5 +13*1+9]);
   label(btex $A$ etex, z5);
   label.top(btex $1$ etex, z[150*5 +13*1+11]);

   label(btex $R$ etex, z[150*5 +13*3]);
   label.top(btex $1$ etex, z[150*5 +13*3+11]);
   label(btex $B$ etex, z6);
   label.bot(btex $0$ etex, z[150*5 +13*3+9]);

   label(btex $R$ etex, z[150*4 +13*2]);
   label(btex $L$ etex, z[150*6 +13*2]);
   label(btex $R$ etex, z[150*8+13*2]);
   label.ulft(btex $Y$ etex, z[150*6 +13*2+4]);
   label.urt(btex $X$ etex, z[150*8+13*2+1]);
   label.lrt(btex $Y$ etex, z[150*8+13*2+10]);

   %copy and  execute
   for i = 3:
      circ_large(z[150*i + 13*3] );
   endfor
   for i =  3, 7:
      circ_large(z[150*i + 13*4] );
   endfor
   for i =  3, 6, 8:
      circ_large(z[150*i + 13*5] );
   endfor
   for i = 2,4, 6, 8:
      circ_large(z[150*i + 13*6] );
   endfor
   for i =  2, 4, 7:
      circ_large(z[150*i + 13*7] );
   endfor
    for i = 2, 4, 6, 8:
      circ_large(z[150*i + 13*8] );
   endfor  
    for i = 3, 7:
      circ_large(z[150*i+13*9] );
   endfor
   
   z10 = 0.5[z[150*5+13*3], z[150*5+13*4]];
%   z11 = 0.5[z[150*3+13*3], z[150*3+13*4]];
   z12 = z[150*7+13*4]+ 5a*(cosd(-140),sind(-140));
   z13 = z[150*7+13*4]+ 5a*(cosd(-40),sind(-40));
   z14 = z[150*7+13*7]+ 5a*(cosd(140),sind(140));
   z15 = z[150*7+13*7]+ 5a*(cosd(40),sind(40));
   z16 = z[150*7+13*9]+ 7a*(cosd(195),sind(195));
   z17 = z[150*7+13*9]+ 7a*(cosd(-15),sind(-15));
   z18 = z[150*7+13*9]+ 6a*(cosd(-120),sind(-120));   
   z19 =z[150*3+13*9]+ 6a*(cosd(-60),sind(-60));
   z20 = z[150*6 +13*8] +6a*(cosd(-45),sind(-45));%
   z21 = z[150*8 +13*8] +6a*(cosd(-135),sind(-135));%  
   drawarrow z[150*4+13*2+6]{dir -120}..z10{dir 0}..{dir -90}z[150*7+13*4+1];%
   drawarrow z[150*3+13*3+1]{dir 90}..{dir 150}z[150*2+13*2+9];%
   
 %copy part
   drawarrow z[150*7+13*4+5]{dir -150}..{dir -90}z[150*6+13*5+1];  
   drawarrow z[150*7+13*4+9]{dir -30}..{dir -90}z[150*8+13*5+1];
   drawarrow z[150*6+13*5+7]--z[150*6+13*6+1]; 
   drawarrow z[150*8+13*5+7]--z[150*8+13*6+1]; 
   drawarrow z[150*6+13*6+7]{dir -90}..{dir -30}z[150*7+13*7+3];
   drawarrow z[150*8+13*6+7]{dir -90}..{dir -150}z[150*7+13*7+11];
   drawarrow z[150*7+13*7+1]--z[150*7+13*4+7];
   drawarrow z[150*6+13*6+5]{dir -150}..{dir -60}z[150*6+13*8+2];%
   drawarrow z[150*8+13*6+9]{dir -30}..{dir -120}z[150*8+13*8+12];%
   drawarrow z[150*6+13*8+7]{dir -90}..{dir -60}z[150*7+13*9+2];
   drawarrow z[150*8+13*8+7]{dir -90}..{dir -120}z[150*7+13*9+12];
   drawarrow z[150*7+13*9+4]{dir 180}..z16..{dir 30}z[150*7+13*9+5];
   drawarrow z[150*7+13*9+10]{dir 0}..z17..{dir 150}z[150*7+13*9+9];
   drawarrow z[150*7+13*9+7]{dir -90}..{dir 180}z18{dir 180}..{dir 180}z19{dir 180}..{dir 90}z[150*3+13*9+7]{dir 90};
   
   label(btex $R$ etex, z[150*7 +13*4]);
   label(btex $L$ etex, z[150*6 +13*5]);
   label(btex $L$ etex, z[150*8 +13*5]);
   label(btex $R$ etex, z[150*6 +13*6]);
   label(btex $R$ etex, z[150*8 +13*6]);
   label(btex $R$ etex, z[150*7 +13*7]);
   label(btex $L$ etex, z[150*6 +13*8]);%
   label(btex $L$ etex, z[150*8 +13*8]);%
   label(btex $R$ etex, z[150*7 +13*9]);

   label.bot(btex $0$ etex, z[150*7+13*4+5]);
   label.bot(btex $1$ etex, z[150*7+13*4+9]);
   label.ulft(btex $A$ etex,z12); 
   label.urt(btex $B$ etex,z13); 
   label.llft(btex $Y$ etex, z[150*6 +13*5+7]);
   label.lrt(btex $Y$ etex, z[150*8 +13*5+7]);
   label.llft(btex $0$ etex, z[150*6 +13*6+7]);
   label.lrt(btex $1$ etex, z[150*6 +13*6+7]);
   label.llft(btex $0$ etex, z[150*8 +13*6+7]);
   label.lrt(btex $1$ etex, z[150*8 +13*6+7]);
   label.llft(btex $A$ etex,z14); 
   label.lrt(btex $B$ etex,z15); 
   label.urt(btex $X$ etex, z[150*7 +13*7+1]);
   label.lft(btex $X$ etex, z[150*6+13*6+5]);
   label.rt(btex $X$ etex, z[150*8+13*6+9]);
   label.ulft(btex $A$ etex, z20); %  
   label.urt(btex $B$ etex, z21);   %
   label.llft(btex $M$ etex, z[150*6+13*8+7]);
   label.lrt(btex $M$ etex, z[150*8+13*8+7]);
   label.ulft(btex $A$ etex, z[150*7+13*9+4]);
   label.urt(btex $B$ etex, z[150*7+13*9+10]);
   label.lft(btex $0$ etex, z16);
   label.rt(btex $1$ etex, z17);
   label.lrt(btex $X$ etex, z[150*7+13*9+7]);
   
   %tape manipulation
   drawarrow z[150*3 + 13*9+3]{dir 150}..{dir 90}z[150*2 + 13*8+7];
   drawarrow z[150*3 + 13*9+11]{dir 30}..{dir 90}z[150*4 + 13*8+7];
   drawarrow z[150*2 + 13*8+1]--z[150*2 + 13*7+7];
   drawarrow z[150*4 + 13*8+1]--z[150*4 + 13*7+7];
   drawarrow z[150*2 + 13*8+11]--z[150*4 + 13*7+5];%
   drawarrow z[150*4 + 13*8+3]--z[150*2 + 13*7+9];%
   drawarrow z[150*2 + 13*7+1]--z[150*2 + 13*6+7];
   drawarrow z[150*4 + 13*7+1]--z[150*4 + 13*6+7];
   drawarrow z[150*2 + 13*7+11]--z[150*4 + 13*6+5];%
   drawarrow z[150*4 + 13*7+3]--z[150*2 + 13*6+9];%
   drawarrow z[150*2 + 13*6+1]{dir 90}..{dir 30}z[150*3 + 13*5+5];%
   drawarrow z[150*4 + 13*6+1]{dir 90}..{dir 150}z[150*3 + 13*5+9];
   drawarrow z[150*3 + 13*5+1]--z[150*3 + 13*4+7];
   drawarrow z[150*3 + 13*4+1]--z[150*3 + 13*3+7]; 
   
   z28 = z[150*3 + 13*9] + 6a*(cosd(20),sind(20)); 
   z29 = z[150*3 + 13*9] + 6a*(cosd(160),sind(160));
   z30 = 0.6[z[150*2+13*8], z[150*2+13*7]];%
   z31 = 0.45[z[150*2+13*8], z[150*4+13*7]];%
   z32 = 0.6[z[150*4+13*8], z[150*4+13*7]];%
   z33 = 0.45[z[150*4+13*8], z[150*2+13*7]];%
   z34 = 0.6[z[150*2+13*7], z[150*2+13*6]];%
   z35 = 0.45[z[150*2+13*7], z[150*4+13*6]];%
   z36 = 0.6[z[150*4+13*7], z[150*4+13*6]];%
   z37 = 0.45[z[150*4+13*7], z[150*2+13*6]];%
   z38 = z[150*2 + 13*6] + 5a*(cosd(60),sind(60)); 
   z39 = z[150*4 + 13*6] + 5a*(cosd(120),sind(120));
   z40 = z[150*3+13*4]+ 7a*(cosd(180),sind(180));%
   z41 = z[150*3+13*4]+ 7a*(cosd(0),sind(0));%

   drawarrow z[150*3+13*4+4]{dir 195}..z40..{dir -15}z[150*3+13*4+3];
   drawarrow z[150*3+13*4+10]{dir -15}..z41..{dir 195}z[150*3+13*4+11];

   label(btex $V$ etex, z28);
   label(btex $V$ etex, z29);  
   label(btex $L$ etex, z[150*3 + 13*9]);
   label(btex $L$ etex, z[150*2 + 13*8]);
   label(btex $L$ etex, z[150*4 + 13*8]);
   label(btex $R$ etex, z[150*2 + 13*7]);
   label(btex $L$ etex, z[150*4 + 13*7]);   
   label(btex $R$ etex, z[150*2 + 13*6]);
   label(btex $R$ etex, z[150*4 + 13*6]);   
   label(btex $R$ etex, z[150*3 + 13*5]);   %
   label(btex $L$ etex, z[150*3 + 13*4]);   %
   label(btex $R$ etex, z[150*3 + 13*3]);   %

   label.top(btex $0$ etex, z[150*3 + 13*9+3]);
   label.top(btex $1$ etex, z[150*3 + 13*9+11]); 
   label.ulft(btex $B$ etex, z[150*2 + 13*8+1]);
   label.rt(btex $A$ etex, z[150*2 + 13*8+11]);
   label.urt(btex $A$ etex, z[150*4 + 13*8+1]);
   label.lft(btex $B$ etex, z[150*4 + 13*8+3]);
   label.ulft(btex $0$ etex, z[150*2 + 13*7+1]);
   label.rt(btex $1$ etex, z[150*2 + 13*7+11]);
   label.urt(btex $1$ etex, z[150*4 + 13*7+1]);
   label.lft(btex $0$ etex, z[150*4 + 13*7+3]);
   label.ulft(btex $V$ etex, z[150*2 + 13*6+1]);
   label.urt(btex $V$ etex, z[150*4 + 13*6+1]);
   label.ulft(btex $Y$ etex, z[150*3 + 13*5+1]);
   label.ulft(btex $Y$ etex, z[150*3 + 13*4+1]);
   label.ulft(btex $X$ etex, z[150*3 + 13*3+1]);
   label.llft(btex $A$ etex, z[150*3 + 13*4+5]);
   label.lrt(btex $B$ etex, z[150*3 + 13*4+9]);

   label.rt(btex $0$ etex, z30);
   label.lft(btex $0$ etex, z31);
   label.lft(btex $1$ etex, z32);
   label.rt(btex $1$ etex, z33);
   label.lft(btex $M$ etex, z34);
   label.lft(btex $M$ etex, z35);
   label.rt(btex $M$ etex, z36);
   label.rt(btex $M$ etex, z37);
   label(btex $0$ etex, z38);
   label(btex $1$ etex, z39);
   label.lft(btex $0$ etex, z40);
   label.rt(btex $1$ etex, z41);

endfig;

verbatimtex
\end{document}
etex;
end