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
a = 14pt;
b = 12pt;

beginfig(1);
   z0 = (0,0);
   for i = 1 upto 30:
      for j = 0 upto 9:
         z[ 10i + j] = z0 + ((i-1)*a, (9-j)*b);
      endfor;
   endfor;
   for i =4, 12:
      for j =1 upto 8:
         z[ 500 +10i + j] = 0.5[z[ 10i + j+1] ,z[ 10i + j] ];
      endfor
   endfor
   draw z10--z18--z78--z70-- cycle;
   draw z90--z98--z158--z150-- cycle;
   drawarrow z57--z117;
   drawarrow z107--z101--z111;
   label(btex Alice etex,z49);
   label(btex Bob etex,z129);

   label(btex $M$ etex,z41);   
   drawarrow z541--z542;  
   label.rt(btex hash etex,z42);   
   drawarrow z543--z544;  
   label(btex $h$ etex,z43);
%   label.lft(btex Encry etex,z44);
   label.rt(btex $[m_A,f_A]$ etex,z44);
   label(btex $D$ etex,z45);
   label(btex $(M,D)\, \, $ etex,z47);
%   
   label(btex  $M$ etex,z121);
   drawarrow z621--z622;
   label.rt(btex  hash etex,z122);
   label(btex  $h$ etex,z123);
   label(btex  $h=h'$? etex,z124);
   label(btex  $h'$ etex,z125);
%   label.lft(btex Decyph etex,z126);
   label.rt(btex  $[m_A, e_A]$ etex,z126);
   drawarrow z626--z625;
   label(btex $D$ etex,z127); 
endfig;

numeric a, b;
a = 35pt;
b = 12pt;
beginfig(2);
   z0 = (0,0);
   for i = 1 upto 15:
      for j = 0 upto 9:
         z[ 10i + j] = z0 + ((i-1)*a, (9-j)*b);
      endfor;
   endfor;
   draw z10--z18--z38--z30-- cycle;
   draw z50--z58--z78--z70-- cycle;
   draw z90--z98--z118--z110-- cycle;
   drawarrow z51--z31;
   drawarrow z32--z52;
   drawarrow z73--z93;
   drawarrow z94--z74;

   drawarrow z57--z37;
   drawarrow z36--z56;
   drawarrow z76--z96;
   drawarrow z97--z77;
   label(btex Alice etex,z29);
   label(btex Eve etex,z69);  
   label(btex Bob etex,z109);
   
   label(btex $I$ etex,z21);   
   label(btex CryptoKey $A$ etex,z22);
   label(btex $m$ etex,z26);
   label(btex $m'$ etex,z27);

   label.top(btex PublicKey $I$ etex,z41);
   label.bot(btex PublicKey $J$ etex,z42);
   label.top(btex cipertext etex,z46);
   label.bot(btex cipertext etex,z47);
   
   label(btex CryptoKey $A'$ etex,z61);
   label(btex  $J$ etex,z62);
   label(btex CryptoKey $B'$ etex,z63);
   label(btex  $L$ etex,z64);
   label(btex $m$ etex,z66);
   label(btex $m'$ etex,z67);
  
   label.top(btex PublicKey $K$ etex,z83);
   label.bot(btex PublicKey $L$ etex,z84);
   label.top(btex cipertext etex,z86);
   label.bot(btex cipertext etex,z87);

   label(btex $K$ etex,z103);   
   label(btex CryptoKey $B$ etex,z104);
   label(btex $m$ etex,z106);
   label(btex $m'$ etex,z107);

endfig;

numeric a, b;
a = 35pt;
b = 12pt;
beginfig(3);
   z0 = (0,0.5b);
   for i = 1 upto 15:
      for j = 0 upto 9:
         z[ 10i + j] = z0 + ((i-1)*a, (9-j)*b);
      endfor;
   endfor;
   draw z10--z18--z38--z30-- cycle;
   draw z50--z58--z78--z70-- cycle;
   draw z90--z98--z118--z110-- cycle;
   drawarrow z51--z31;
%   drawarrow z32--z52;
%   drawarrow z73--z93;
   drawarrow z94--z74;

   drawarrow z57--z37;
%   drawarrow z36--z56;
%   drawarrow z76--z96;
   drawarrow z97--z77;
   label(btex Alice etex,z29);
   label.top(btex Certificate etex,z69);  
   label.bot(btex Authority etex,z69);  
   label(btex Bob etex,z109);
   
   label(btex PublicKey $A$ etex,z21);   
%   label(btex CryptoKey $A$ etex,z22);
   label(btex PublicKey $E$ etex,z27);
%   label(btex $m'$ etex,z27);

   label.top(btex PublicKey $A$ etex,z41);
%   label.bot(btex PublicKey $J$ etex,z42);
   label.top(btex PublicKey $E$ etex,z47);
   label.bot(btex signed by $B$ etex,z47);
   
   label(btex CryptoKey $B$ etex,z61);
%   label(btex  $J$ etex,z62);
%   label(btex CryptoKey $B'$ etex,z63);
   label(btex PublicKey $C$ etex,z64);
   label(btex PublicKey $E$ etex,z67);
%   label(btex $m'$ etex,z67);
  
%   label.top(btex PublicKey $K$ etex,z83);
   label.top(btex PublicKey $C$ etex,z84);
   label.top(btex PublicKey $E$ etex,z87);
   label.bot(btex signed by $D$ etex,z87);

%   label(btex $K$ etex,z103);   
%   label(btex CryptoKey $B$ etex,z104);
   label(btex CryptoKey $D$ etex,z104);
   label(btex CryptoKey $F$ etex,z107);

endfig;

verbatimtex
\end{document}
etex;
end