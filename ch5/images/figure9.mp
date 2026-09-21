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
a = 3pt;
b = 3pt;

beginfig(1);%fork from figure7.mp(1)
   z0 = (20a,25b);
   for i = 1 upto 14:%10~149
      for j = 0 upto 9:
         z[ 10i + j] = z0 + (i*a, (9-j)*b);
      endfor;
   endfor;
   draw z10--z19--z149--z140-- cycle;
   draw z21--z28--z138--z131-- cycle;
   draw z32--z72;
   draw z43--z123;
   draw z54--z124;
   draw z35--z95;
   draw z46--z126;
   draw z47--z107;
   z150 = z79 - (0, a);

   z199 = z0 + (18a, 0);
   for i = 1 upto 8:%210~289
      for j = 0 upto 9:
         z[ 200+ 10i + j] = z199 + (3i*a, (9-j)*b);
      endfor;
   endfor;
%   drawarrow z[214]--z[284];
%   drawarrow z[286]--z[216];
   z290 = 0.5[z247,z257]-(0, 5b);
   label.bot(btex Internet etex,z290);
  
   z299 = z199+ (27a, 0);
   for i = 1 upto 4:%300~349
      for j = 0 upto 9:
         z[ 300+ 10i + j] = z299 + (3i*a, 3(9-j)*b);
      endfor;
   endfor;
   draw z315--z345--z349--z319-- cycle;
   draw z326--z336;
   draw z327--z337;
   draw z328--z338;
   z350 = z329 + (2a, -a);

   z499 = z0 + (-10a,-20b);
   for i = 0 upto 9:
      for j = 0 upto 9:
         z[ 500+ 10i + j] = z499 + (9i*a, 2(9-j)*b);
      endfor;
   endfor;
   draw z510--z530--z532--z512-- cycle;
   label(btex Cript Key etex,z521);
   draw z560--z580--z582--z562-- cycle;
   label(btex Public Key etex,z571);
   label(btex Number etex,z586);
   label(btex Challenge etex,z566);
   path p, q, r;
   p=z585{up}..z571..{down}z565;
   q= z582--z572;
   r = z562--z572;
   z600 = p intersectionpoint q;
   z601 = p intersectionpoint r;
   draw z585{up}..z600;
   drawarrow z601..{down}z565;
   label(btex Number etex,z516);
   label(btex Challenge etex,z536);
   path p, q, r;
   p=z535{up}..z521..{down}z515;
   q= z532--z522;
   r = z522--z512;
   z602 = p intersectionpoint q;
   z603= p intersectionpoint r;
   draw z535{up}..z602;
   drawarrow z603..{down}z515;
   drawarrow z556--z546;
   drawarrow z517--z519--z589--z587;
   label.bot(btex $+$ Digital Signature etex,z539);
   drawarrow z501--z511;
   label.top(btex Bio-authen etex,z501);
   label.bot(btex Pass-phrase etex,z501);
endfig;

beginfig(2);%fork from figure7.mp(1)
   z0 = (7a,0);
   for i = 1 upto 14:%10~149
      for j = 0 upto 9:
         z[ 10i + j] = z0 + (i*a, (9-j)*b);
      endfor;
   endfor;
   draw z10--z19--z149--z140-- cycle;
   draw z21--z28--z138--z131-- cycle;
   draw z32--z72;
   draw z43--z123;
   draw z54--z124;
   draw z35--z95;
   draw z46--z126;
   draw z47--z107;
%   z150 = z79 - (0, a);
%   label.bot(btex Client etex,z150);

   z199 = z0 + (15a, 0);
%   for i = 1 upto 8:
%      for j = 0 upto 9:
%         z[ 200+ 10i + j] = z199 + (3i*a, (9-j)*b);
%      endfor;
%   endfor;
%   drawarrow z[214]--z[284];
%   drawarrow z[286]--z[216];
%   z290 = 0.5[z247,z257] ;
%   label.bot(btex Internet etex,z290);
  
   z300 = z199+ (25a, 0);
   for i = 1 upto 4:%300~349
      for j = 0 upto 9:
         z[ 300+ 10i + j] = z300 + (3i*a, 3(9-j)*b);
      endfor;
   endfor;
   draw z315--z345--z349--z319-- cycle;
   draw z326--z336;
   draw z327--z337;
   draw z328--z338;
%   draw z32--
   z350 = z300 + (0, 26b);
%   label.bot(btex Server etex,z350);
%   z350 = z300 + (0, 20b);
   z400 = z350+ (-20a, 0);
   z450 = z400+ (-20a, 0);
%   z500 = z450+ (-20a, 0);
%   z550 = z500+ (-20a, 0);

   for k = 0 upto 2:
      for i = 1 upto 4:%300~349
         for j = 0 upto 9:
            z[ 350 +50k + 10i + j] = z[ 350 +50k] + (3i*a, 3(9-j)*b);
         endfor;
      endfor;
   endfor;

   for k = 0 upto 2:   
      draw z[ 350 +50k +15]--z[ 350 +50k +45]--z[ 350 +50k +49]--z[ 350 +50k +19]-- cycle;
      draw z[ 350 +50k +26]--z[ 350 +50k +36];
      draw z[ 350 +50k +27]--z[ 350 +50k +37];
      draw z[ 350 +50k +28]--z[ 350 +50k +38];
   endfor;
   
   label.bot(btex Mail Server etex,z489);
   label.bot(btex Web Server etex,z439);
   label.bot(btex Proxi Server etex,z389);

%   z350 = z329 + (2a, -a);
%   label.bot(btex Server etex,z350);

   z500 = z0+ (20a, 0);
   for i = 1 upto 14:%10~149
      for j = 0 upto 9:
         z[ 500+10i + j] = z500 + (i*a, (9-j)*b);
      endfor;
   endfor;
   draw z510--z519--z649--z640-- cycle;
   draw z521--z528--z638--z631-- cycle;
   draw z532--z572;
   draw z543--z623;
   draw z554--z624;
   draw z535--z595;
   draw z546--z626;
   draw z547--z607;
   
   z700 = z450+ (-17a,7b);
   for i =1 upto 3:
      for j=0 upto 19:
         z[700 + 20i + j] = z700 + (8i*a, 2(9-j)*b);
      endfor;
   endfor;
   z780 = z746 + (55a,0);
   z781 = 0.5[z365,z395];
   z782 = (x781, y780);
   draw z781--z782;
   z783 = 0.5[z415,z445];
   z784 = (x783, y780);
   draw z783--z784;
   z785 = 0.5[z465,z495];
   z786 = (x785, y780);
   draw z785--z786;
   z790 = z759 + (55a,0);
   z791 = 0.5[z10,z140];
   z792 = (x791, y790);
   draw z791--z792;
   z793 = 0.5[z510,z640];
   z794 = (x793, y790);
   draw z793--z794;
   z795 = 0.5[z315,z345];%[z365,z395];
   z796 = (x795, y790);
   draw z795--z796;   
      
   label.top(btex WAN etex,z741);
   draw z722--z762--z764--z724-- cycle;
   label(btex Fire Wall etex,z743);
   draw z735--z775--z777--z737-- cycle;
   label(btex Fire Wall etex,z756);
   draw z742--z741;
   draw z744--z755;
   label.lft(btex DMZ etex,z750);
   draw z746--z780;
   draw z757--z759;
   draw z759--z790;
endfig;

verbatimtex
\end{document}
etex;
end