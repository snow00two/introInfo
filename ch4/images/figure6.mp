prologues := 3;
verbatimtex
\documentclass[uplatex]{jsarticle}
% from command line 
%>upmpost -tex=uplatex figure6.mp
%\documentclass{article} % In English mode
\usepackage{verbatim}
\usepackage{latexsym}
\usepackage{amssymb}
\usepackage{amsmath}
\begin{document}
etex;
numeric a, b;
a= 6pt;
b= 2a;

beginfig(1);
   z0 = (0,0);
   for i = 1 upto 40:
      for j = 0 upto 3:
         z[4i + j] =z0 +(i*b, j*b);
      endfor
   endfor
   draw z[4]--z[4*22];
   draw z[4+3]--z[4*22+3];
   draw z[4]--z[4+3];
   draw z[4*5]--z[4*5+3];
   draw z[4*9]--z[4*9+3];
   draw z[4*12]--z[4*12+3];
   draw z[4*18]--z[4*18+3];
   draw z[4*22]--z[4*22+3];
   label.rt(btex $\text{送信元}$ etex, z[4+2]);
   label.rt(btex $\text{アドレス}$ etex, z[4+1]);
   label.rt(btex $\text{送信先}$ etex, z[4*5+2]);
   label.rt(btex $\text{アドレス}$ etex, z[4*5+1]);
   label.rt(btex $\text{データ}$ etex, z[4*9+2]);
   label.rt(btex $\text{長}$ etex, z[4*10+1]);
   label(btex $\text{データ}$ etex, z[4*15+2]);
   label.rt(btex $\text{エラー}$ etex, z[4*18+2]);
   label.rt(btex $\text{チェック}$ etex, z[4*18+1]);
endfig;

beginfig(2);
   z0 = (0,0);
   for i = 1 upto 40:
      for j = 0 upto 8:
         z[9i + j] =z0 +(i*b, j*b);
      endfor
   endfor
   draw z[9*7]--z[9*21];
   draw z[9*7]--z[9*7+2]--z[9*21+2]--z[9*21];
   draw z[9*8 +2]--z[9*8 +4]--z[9*20+4]--z[9*20+2];
   draw z[9*9+4]--z[9*9+6]--z[9*19+6]--z[9*19+4];
   draw z[9*10+6]--z[9*10+8]--z[9*18+8]--z[9*18+6];

   label.rt(btex $\text{物理層}$ etex, z[9+1]);
   label.rt(btex $\text{IP層}$ etex, z[9+3]);
   label.rt(btex $\text{TCP/UDP層}$ etex, z[9+5]);
   label.rt(btex $\text{アプリケーション層}$ etex, z[9+7]);
%   label.rt(btex $\text{データ}$ etex, z[4*9+2]);
%   label.rt(btex $\text{長}$ etex, z[4*10+1]);
%   label(btex $\text{データ}$ etex, z[4*15+2]);
%   label.rt(btex $\text{エラー}$ etex, z[4*18+2]);
%   label.rt(btex $\text{チェック}$ etex, z[4*18+1]);
endfig;


beginfig(3);
   z0 = (0,0);
   for i = 1 upto 40:
      for j = 0 upto 3:
         z[4i + j] =z0 +(i*b, j*b);
      endfor
   endfor
   draw z[4]--z[4*25];
   draw z[4+3]--z[4*25+3];
   draw z[4]--z[4+3];
   draw z[4*5]--z[4*5+3];
   draw z[4*7]--z[4*7+3];
   draw z[4*11]--z[4*11+3];
   draw z[4*15]--z[4*15+3];
   draw z[4*19]--z[4*19+3];
   draw z[4*25]--z[4*25+3];
   label.rt(btex $\text{基本情報}$ etex, z[4+2]);
   label.rt(btex $\text{TTL}$ etex, z[4*5+2]);
   label.rt(btex $\text{送信元IP}$ etex, z[4*7+2]);
   label.rt(btex $\text{アドレス}$ etex, z[4*7+1]);
   label.rt(btex $\text{送信先IP}$ etex, z[4*11+2]);
   label.rt(btex $\text{アドレス}$ etex, z[4*11+1]);
   label.rt(btex $\text{エラー}$ etex, z[4*15+2]);
   label.rt(btex $\text{チェック}$ etex, z[4*15+1]);
   label.rt(btex $\text{データ}$ etex, z[4*19+2]);
%   label.rt(btex $\text{エラー}$ etex, z[4*18+2]);
%   label.rt(btex $\text{チェック}$ etex, z[4*18+1]);
endfig;

beginfig(4);
   z0 = (0,0);
   for i = 1 upto 40:
      for j = 0 upto 3:
         z[4i + j] =z0 +(i*b, j*b);
      endfor
   endfor
   draw z[4]--z[4*22];
   draw z[4+3]--z[4*22+3];
   draw z[4]--z[4+3];
   draw z[4*5]--z[4*5+3];
   draw z[4*9]--z[4*9+3];
   draw z[4*14]--z[4*14+3];
   draw z[4*18]--z[4*18+3];
   draw z[4*22]--z[4*22+3];
   label.rt(btex $\text{送信元}$ etex, z[4+2]);
   label.rt(btex $\text{ポート}$ etex, z[4+1]);
   label.rt(btex $\text{送信先}$ etex, z[4*5+2]);
   label.rt(btex $\text{ポート}$ etex, z[4*5+1]);
   label.rt(btex $\text{シーケンス}$ etex, z[4*9+2]);
   label.rt(btex $\text{ナンバー}$ etex, z[4*10+1]);
   label.rt(btex $\text{データ}$ etex, z[4*14+2]);
   label.rt(btex $\text{エラー}$ etex, z[4*18+2]);
   label.rt(btex $\text{チェック}$ etex, z[4*18+1]);
endfig;

numeric a, b;
a = 10pt;
b = 10pt;

beginfig(5);
   z0 = (-a,-a);
   for i = 1 upto 20:
      for j = 0 upto 9:
         z[ 10i + j] = z0 + (i*a, j*b);
      endfor;
   endfor;
%   draw z10--z19--z149--z140-- cycle;
   dotlabel.rt(btex etex, z28);
   dotlabel.rt(btex etex, z37);
   dotlabel.rt(btex etex, z32);
   dotlabel.rt(btex etex, z45);
   dotlabel.rt(btex etex, z53);
%   dotlabel.rt(btex etex, z58);
%   dotlabel.rt(btex etex, z66);
   dotlabel.rt(btex etex, z77);
   dotlabel.rt(btex etex, z72);
   dotlabel.rt(btex etex, z85);
%   dotlabel.rt(btex etex, z97);
   dotlabel.rt(btex etex, z103);
   dotlabel.rt(btex etex, z108);
   dotlabel.rt(btex etex, z106);
%   dotlabel.rt(btex etex, z116);
%   dotlabel.rt(btex etex, z121);
   dotlabel.rt(btex etex, z132);
   dotlabel.rt(btex etex, z135);
   dotlabel.rt(btex etex, z137);
   draw z45..z37;
   draw z28..z37;
   draw z37..z77;
   draw z108..z137;
   draw z53..z45;
   
   draw z72..z103;
   draw z103..z85;
   draw z103..z135;
   draw z135..z137;
   draw z103..z132;
   draw z132..z121;
   draw z132..z142;
   draw z137..z148;
   draw z135..z144;
   draw z108..z99;
   draw z37..z39;
   draw z45..z14;
   draw z72..z61;
   draw z77..z89;
   draw z28..z18;
   draw z166..z186;
   draw z33..z22..z31..z42.. cycle dashed evenly;
   draw z107..z96..z105..z116.. cycle dashed evenly;  
   draw z182..z173..z162..z171.. cycle dashed evenly;  
   pickup pencircle scaled 1pt;
   drawarrow z32..z53 withcolor red;
   drawarrow z53..z72 withcolor red;   
   drawarrow z72..z85 withcolor red;
   drawarrow z85..z77 withcolor red;
   drawarrow z77..z108 withcolor red;
   drawarrow z108..z106 withcolor red;
   drawarrow z164..z184 withcolor red;

   dotlabel.rt(btex etex, z178);
   label.rt(btex rooter, gateway etex, z188);
   label.rt(btex cable etex, z186);
   label.rt(btex routing etex, z184);
   label.rt(btex LAN etex, z182);
endfig;

beginfig(6);
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
      	z[10i +j]= z0 + (5i*a, 0) +5j*(a/2, sqrt(3)*a/2) +(a*cosd(30(i+j)),a*sind(10(i+j +i*j/2)) );
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
   %voro(z11, z21, z12);
%   voro(z12, z22, z21);
endfig;

verbatimtex
\end{document}
etex;
end