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
a=6pt;
b=0.2;
c=5pt;

beginfig(2);
z0=(5.5a,8a);%Origin viewpoint
%frame
z1=(1.7a,-2.7a);%x-axis
z2=(5a,0);%y-axis
z3=(0,5a);%z-axis
dotlabel.lft(btex $ $ etex,z0);

%screen
z4=(15a,0);%distance
z5=z0+z4-1.1z1+1.1z3;%upper left vertex
z6=z5+2.2z1;
z7=z6-1.8z3;
z8=z7-2.2z1;

draw z5--z6--z7--z8-- cycle;


%object pyramid 
z11=0.7z1+0.5z2;
z12=0.7z1-0.9z2;
z20=(30a,0);%distance
z21=z0+z20+z11+0.5z3;%the center of object
z22=z21+1.3z3;%top vertex 
z23=z21-z11-z12;%front vertex
z24=z23+2z11;
z25=z24+2z12;
z26=z25-2z11;
z27=z26-2z12;
z29=0.64[z22,0.5[z25,z26]];%reflection point

draw z24--z25--z26;
draw z26--z23--z24 dashed evenly;
draw z22--z23 dashed evenly;

for i=24 upto 26:
   draw z22--z[i];
endfor;

%screen
z32=0.45[z0,z22];
z33=0.43[z0,z23];
z35=0.45[z0,z25];
z36=0.55[z0,z26];
draw z0--z32;
draw z0--z35;
draw z0--z36;
draw z0--z33;
z37=whatever[z0,z22]=whatever[z5,z6];
z38=whatever[z0,z25]=whatever[z6,z7];
z39=whatever[z0,z26]=whatever[z6,z7];
z40=whatever[z0,z23]=whatever[z6,z7];
z41=whatever[z0,z23]=whatever[z22,z26];
z42=0.48[z0,z29];
z43=whatever[z0,z29]=whatever[z6,z7];

draw z37--z22;
draw z38--z25;
draw z39--z26;
draw z40--z41;
draw z41--z23 dashed evenly;

%sun
z50=z0+(10a,15a);
z51=z50+(a,0);
z52=z50+(0,a);
z53=z50+(-a,0);
z54=z50+(0,-a);
draw z51..z52..z53..z54.. cycle withcolor red;

draw z0--z42 withcolor red;
draw z43--z29--z50 withcolor red;

%object paralel pyramid 
z100=-3z1+2.5z2;
z121=z21+z100;%the center of object
z122=z22+z100;%top vertex 
z123=z23+z100;%front vertex
z124=z24+z100;
z125=z25+z100;
z126=z26+z100;
z127=z27+z100;
z129=z29+z100;%reflection point

draw z124--z125--z126;
draw z126--z123--z124 dashed evenly;
draw z122--z123 dashed evenly;

for i=124 upto 126:
   draw z122--z[i];
endfor;


label.lft(btex 視点 etex,z0);
label.bot(btex 投影面 etex,z7);
label.lft(btex 太陽 etex,z53);
%test part
%label.top(btex $z_{5}$ etex,z5);
%label.top(btex $z_{6}$ etex,z6);
%label.bot(btex $z_{7}$ etex,z7);
%label.bot(btex $z_{8}$ etex,z8);
%label.top(btex $z_{22}$ etex,z22);
%label.bot(btex $z_{23}$ etex,z23);
%label.bot(btex $z_{24}$ etex,z24);
%label.bot(btex $z_{25}$ etex,z25);
%label.bot(btex $z_{26}$ etex,z26);
%dotlabel.top(btex $ $ etex,z11);
%dotlabel.top(btex $ $ etex,z12);
%dotlabel.top(btex $ $ etex,z50);

%camera


pickup pencircle scaled 1pt;

draw z33--z36--z35;
draw z32--z33;
draw z32--z35;
draw z32--z36;
endfig;

beginfig(3);
z0=(10a,10a);%Origin
%frame
z1=(-2a,-3a);%x-axis
z2=(5a,0);%y-axis
z3=(0,5a);%z-axis

z4=z0+5z2;%foot of viewpoint
z5=z0-z2+z1; 
z6=z5-2z1; 
z7=z4+z2+z1; 
z8=z7-2z1;

path p;
p = z5--z6--z8--z7-- cycle;
fill p withcolor 0.9white;
draw p;

z10= z0+2z3;%viewpoint
z11=z0-2z3;
z12=z4+1.5z3;%sorce
z13=z4-1.5z3;
z14=whatever[z0,z4]=whatever[z10,z13];
z15=whatever[z5,z7]=whatever[z11,z12];
z16=whatever[z5,z7]=whatever[z0,z11];
z17=z4+0.5z1-0.2z2;
z18=0.5[z10,z14];
z19=0.5[z14,z12];

draw z10--z0;
draw z4--z12;
draw z11--z15;
draw z11--z16;
draw z15--z14 dashed evenly;


draw z16--z0 dashed evenly;
dotlabel.lft(btex $ $ etex,z10);
dotlabel.lft(btex $ $ etex,z11);
dotlabel.lft(btex $ $ etex,z12);

z20=z0+0.5z1;
z21=z0+0.5z2;
z22=z0+b*z1;%rightAngle
z23=z22+b*z3;
z24=z0+b*z3;
z25=z0+b*z2;
z26=z25+b*z3;
z27=z0+b*z3;

draw z0--z20;
draw z0--z21;
draw z22--z23--z24;%
draw z25--z26--z27;%

z30=z4+0.5z1;
z31=z4+0.5z2;
z32=z4+b*z1;%rightAngle
z33=z32+b*z3;
z34=z4+b*z3;
z35=z4+b*z2;
z36=z35+b*z3;
z37=z4+b*z3;
z38=z14+z2;
z39=z14-z2;
z40=z14+0.5z1;
z41=z14-0.5z1;
z42=z17+0.5z2;
z43=z17-0.5z2;
z44=z17+0.3z1;
z45=z17-0.3z1;

z51=z10+(a,0);
z52=z10+(0,a);
z53=z10+(-a,0);
z54=z10+(0,-a);

path q;
q = z51..z52..z53..z54.. cycle;
%fill q withcolor 0.9red;
draw q withcolor red;

drawarrow z10--0.5[z10,z17] withcolor red;
draw 0.5[z10,z17]--z17 withcolor red;
drawarrow z17--0.5[z17,z12] withcolor red;
draw 0.5[z17,z12]--z12 withcolor red;
 
draw z4--z30;
draw z4--z31;
draw z32--z33--z34;%
draw z35--z36--z37;%
draw z38--z39;
draw z40--z41;
draw z42--z43;
draw z44--z45;

label(btex $\,\, =$ etex,0.5[z10,z0]);
label(btex $\,\, =$ etex,0.5[z11,z0]);
label.lft(btex 光源 etex,z10);
label.lft(btex 鏡映 etex,z11);
label.rt(btex 視点 etex,z12);

pickup pencircle scaled 1pt;
draw z18--z14;
drawarrow z10--z18;
draw z19--z12;
drawarrow z14--z19;
endfig;


beginfig(4);
z0=(12a,8a);%Origin viewpoint
%frame
z1=(1.7a,-2.7a);%x-axis
z2=(5a,0);%y-axis
z3=(0,5a);%z-axis
dotlabel.lft(btex  etex,z0);

%screen
z4=(15a,0);%distance
z5=z0+z4-z1+1.3z3;%upper left vertex
z6=z5+2.6z1;
z7=z6-2z3;
z8=z7-2.6z1;
draw z5--z6--z7--z8-- cycle;


%object pyramid 
z11=0.7z1+0.5z2;
z12=0.7z1-0.9z2;
z20=(30a,0);%distance
z21=z0+z20+z11+0.5z3;%the center of object
z22=z21+1.3z3;%top vertex 
z23=z21-z11-z12;%front vertex
z24=z23+2z11;
z25=z24+2z12;
z26=z25-2z11;
z27=z26-2z12;
z29=0.64[z22,0.5[z25,z26]];%reflection point

draw z24--z25--z26;
draw z26--z23--z24 dashed evenly;
draw z22--z23 dashed evenly;

for i=24 upto 26:
   draw z22--z[i];
endfor;

%screen
z32=0.45[z0,z22];
z33=0.43[z0,z23];
z35=0.45[z0,z25];
z36=0.55[z0,z26];
%draw z0--z32;
%draw z0--z35;
%draw z0--z36;
%draw z0--z33;
z37=whatever[z0,z22]=whatever[z5,z6];
z38=whatever[z0,z25]=whatever[z6,z7];
z39=whatever[z0,z26]=whatever[z6,z7];
z40=whatever[z0,z23]=whatever[z6,z7];
z41=whatever[z0,z23]=whatever[z22,z26];
z42=0.48[z0,z29];
z43=whatever[z0,z29]=whatever[z6,z7];

%draw z37--z22;
%draw z38--z25;
%draw z39--z26;
%draw z40--z41;
%draw z41--z23 dashed evenly;

%sun
z50=z0+(10a,15a);
z51=z50+(a,0);
z52=z50+(0,a);
z53=z50+(-a,0);
z54=z50+(0,-a);
%draw z51..z52..z53..z54.. cycle withcolor red;

%draw z0--z42 withcolor red;
%draw z43--z29--z50 withcolor red;

%object paralel pyramid 
z100=-3z1+2.5z2;
z121=z21+z100;%the center of object
z122=z22+z100;%top vertex 
z123=z23+z100;%front vertex
z124=z24+z100;
z125=z25+z100;
z126=z26+z100;
z127=z27+z100;
z129=z29+z100;%reflection point

draw z124--z125--z126;
draw z126--z123--z124 dashed evenly;
draw z122--z123 dashed evenly;

for i=124 upto 126:
   draw z122--z[i];
endfor;


label.bot(btex 投影座標系 etex,z7);
%dotlabel.lft(btex Sun etex,z53);

z201=z0+z1; %camera coordinate
z202=z0+3z2;
z203=z0+z3;
z204=z202+z1;
z205=z202+z3;
z207=z0+4z2;
z208=whatever[z202,z207]=whatever[z6,z7];

drawarrow z0--z201;
draw z0--z202;
draw z202--z208 dashed evenly;
drawarrow z208--z207;
drawarrow z0--z203;
drawarrow z202--z204;
drawarrow z202--z205;
label.bot(btex カメラ座標系 etex,z201);
label.lft(btex 視点 etex,z0);


z210=z0+(16a,16a);%world coordinate
z211=z210+7.5z1;
z212=z210+6z2;
z213=z210+2z3;
z214=z210-z2;
drawarrow z210--z211;
drawarrow z214--z212;
drawarrow z210--z213;

label.bot(btex ワールド座標系 etex,z211);

z220=z0+(-a,15.5a); %modeling coordinate
z221=z220+2z1;%
z222=z220+2z2;
z223=z220+2z3;
z224=z220-2z1;%
z225=z220-2z2;
z226=z220-2z3;

z230=z220+z1;%(-2a,-2a)
z231=z220+z2;
z232=z220-z1;%(2a,2a)
z233=z220-z2;
z234=z220+z3;

drawarrow z224--z221;
drawarrow z225--z222;
drawarrow z220--z223;
draw z233--z230--z231;
draw z233--z232--z231 dashed evenly; 
draw z230--z234;
draw z231--z234;
draw z232--z234 dashed evenly;
draw z233--z234;
label.bot(btex モデリング座標系 etex,z221);


%draw z33--z36--z35;
%draw z32--z33;
%draw z32--z35;
%draw z32--z36;
endfig;


beginfig(5);
z0=(2a,3a);
z1=z0-(2a,0);
z2=z0+(15a,0);
z3=z0-(0,3a);
z4=z0+(0,10a);
z5=z0+(11a,7a);
z6 =z0+(4a,-2a);
z7 =z0 +(4a,8a);
z8=whatever[z6,z7]=whatever[z0,z5];
z9=whatever[z6,z7]=whatever[z0,z2];
z10=(x5,y0);
z11=(x0,y5);
z12 =(x0,y8);
drawarrow z1--z2;
drawarrow z3--z4;
draw z6--z7;
draw z8--z0;
drawarrow z5--z8 ;
draw z10--z5--z11 dashed evenly ;
draw z8--z12 dashed evenly ;
label.lrt(btex $\mathbf 0$ etex,z0);
label.rt(btex $x$ etex,z2);
label.top(btex $y$ etex,z4);
dotlabel.rt(btex $(x,y)$ etex,z5);
dotlabel.lrt(btex $1$ etex,z9);
dotlabel.bot(btex $x$ etex,z10);
dotlabel.lft(btex $y$ etex,z11);
dotlabel.lft(btex$\frac yx$ etex,z12);
%dotlabel.bot(btex$x$ etex,z9);

endfig;

beginfig(6);
z0=(5.5a,8a);%Origin, viewpoint
%frame
z1=(5a,0);%x-axis line of sight
z2=(1.7a,-2.7a);%y-axis
z3=(0,5a);%z-axis
dotlabel.lft(btex $ $ etex,z0);

%window
z4=(15a,0);%distance
z5=z0+z4-1.1z2+1.1z3;%upper left vertex
z6=z5+2.2z2;
z7=z6-1.8z3;
z8=z7-2.2z2;

draw z5--z6--z7--z8-- cycle;

%pyramid 
z11=0.7z2+0.5z1;
z12=0.7z2-0.9z1;
z20=(30a,0);%distance
z21=z0+z20+z11+0.5z3;%the center of object
z22=z21+1.3z3;%top vertex 
z23=z21-z11-z12;%front vertex
z24=z23+2z11;
z25=z24+2z12;
z26=z25-2z11;
z27=z26-2z12;

draw z24--z25--z26;
draw z26--z23--z24 dashed evenly;
draw z22--z23 dashed evenly;

for i=24 upto 26:
   draw z22--z[i];
endfor;

%window
z32=0.45[z0,z22];
z33=0.425[z0,z23];
z35=0.45[z0,z25];
z36=0.55[z0,z26];
draw z0--z32 withcolor red ;
draw z0--z35 withcolor red ;
draw z0--z36 withcolor red ;
draw z0--z33 withcolor red ;
z42=whatever[z0,z22]=whatever[z5,z6];
z43=whatever[z0,z23]=whatever[z22,z26];
z45=whatever[z0,z25]=whatever[z6,z7];
z46=whatever[z0,z26]=whatever[z6,z7];

z48=whatever[z0,z23]=whatever[z6,z7];

draw z42--z22 withcolor red ;
draw z45--z25 withcolor red ;
draw z46--z26 withcolor red ;
draw z48--z43 withcolor red ;
draw z43--z23 dashed evenly withcolor red ;

label.lft(btex viewpoint etex,z0);
label.bot(btex window etex,z7);

pickup pencircle scaled 1pt;

draw z33--z36--z35;
draw z32--z33;
draw z32--z35;
draw z32--z36;
endfig;

%numeric e, f;
%e=10a;
%f=10a;
%beginfig(7);
%z0=(0,0);
%z1=z0+(2e,0);
%z2=z0+(0,1.5f);
%z3=z0+z1+z2;
%z5=z0+(e,f);%vanishing point
%
%for i=-10 upto 15:
%	z[100+i]=(5a*i,0);
%endfor;
%
%for i=-10 upto 0:
%	path p, q;
%	p= z[100+i]--z5;
%	q= z0--z2;
%	z[300+i]= p intersectionpoint q;
%	draw z[300+i]--z5;
%endfor;
%
%for i=0 upto 4:
%	draw z[100+i]--z5;
%endfor;
%
%for i=5 upto 15:
%	path p, q;
%	p= z[100+i]--z5;
%	q= z1--z3;
%	z[300+i]= p intersectionpoint q;
%	draw z[300+i]--z5;
%endfor;
%
%%If we take x=1, z=-c, u=1,w=c, t=2j+1, 
%% then (z+wt)/(x+ut)=c*2j/(2j+2) =c*j/(j+1) in (!)
%for j=0 upto 80:
%	z[400+j]=(0,f*j/(j+1));
%	z[500+j]=(2e,f*j/(j+1));
%	draw z[400+j]--z[500+j];
%endfor;
%
%z499=(0,f);
%z599=(2e,f);
%draw z499--z599;
%
%label(btex  etex,z2);
%label(btex  etex,z3);
%endfig;
%
%numeric e, f;
%e=10a;
%f=10a;
%
%beginfig(7);
%z0=(0,0);
%z1=z0+(2e,0);
%z2=z0+(0,1.5f);
%z3=z1+(0,1.5f);
%z5=z0+(e,f);%vanishing point
%
%z6 = z0+(0,f);
%z7 = z1+(0,f);
%z8 = z6 -(0,0.5a);
%z9 = z7 -(0,0.5a);
%for i=-20 upto 25:
%	z[100+i]= z0 + (4a*i,0);
%endfor;
%
%for i=-20 upto 0:
%	path p, q;
%	p= z[100+i]--z5;
%	q= z0--z2;
%	z[150+i]= p intersectionpoint q;
%endfor;
%
%for i= 5 upto 25:
%	path p, q;
%	p= z[100+i]--z5;
%	q= z1--z3;
%	z[160+i]= p intersectionpoint q;
%%	dotlabel(btex etex,z[160+i]);
%endfor;
%
%for  i = 0 upto 20:
%	for j = -20 upto 25:
%		z[250 + 50i + j] =  whatever[z[150 - i],z[160+5 + i]] = whatever[z[100+j], z5];
%	endfor;
%endfor;
%
%for  i = 0 upto 19:
%	for j = 0 - i step 2 until 4 + i:
%		path q;
%		q =  z[250 + 50i + j]--z[250 + 50i + j+1]--z[250 + 50i + j+1+50]--z[250 + 50i + j+50]-- cycle ;
%		
%		if i = 0 :
%			fill q withcolor  0white ;
%		else : if i = 1:
%			fill q withcolor  0.15white ;
%		else : if i = 2 :
%			fill q withcolor  0.27white ;
%		else :if i = 3 :
%			fill q withcolor  0.38white ;
%		else : if i = 4 :
%			fill q withcolor  0.47white ;
%		else : if i = 5:
%			fill q withcolor  0.55white ;
%		else : if i = 6 :
%			fill q withcolor  0.62white ;
%		else : if i = 7 :
%			fill q withcolor  0.68white ;
%		else : if i = 8 :
%			fill q withcolor  0.72white ;
%		else : if i = 9:
%			fill q withcolor  0.77white ;
%		else : if i = 10 :
%			fill q withcolor  0.8white ;
%		else :
%			fill q withcolor  0.85white ;
%		fi
%		fi
%		fi
%		fi
%		fi
%		fi
%		fi
%		fi
%		fi
%		fi
%		fi
%		
%	endfor;
%endfor;
%
%path p;
%p= z130--z185--z9--z8-- cycle;
%fill p withcolor  0.96white ;	
%
%path p;
%p= z6--z7--z9--z8-- cycle;
%fill p withcolor  0.995white ;	
%%pickup pencircle scaled 0.1pt;
%%draw z6--z7;
%
%label(btex  etex,z2);
%label(btex  etex,z3);
%endfig;
%
%numeric a, e, f;
%a= 12pt;
%e=10a;
%f=10a;
%
%beginfig(7);
%z0=(0,0);
%z1=z0+(2e,0);
%z2=z0+(0,1.5f);
%z3=z1+(0,1.5f);
%z5=z0+(e,f);%vanishing point
%
%%label(btex  etex,z2);
%%label(btex  etex,z3);
%path p;
%p= z0--z1--z3--z2-- cycle;
%fill p withcolor  0.9white ;	
%
%z6 = z0+(0,f);
%z7 = z1+(0,f);
%z8 = z6 -(0,0.4a);
%z9 = z7 -(0,0.4a);
%for i=-30 upto 35:
%	z[100+i]= z0 + (4a*i,0);
%endfor;
%
%for i=-30 upto 0:
%	path p, q;
%	p= z[100+i]--z5;
%	q= z0--z2;
%	z[170+i]= p intersectionpoint q;
%endfor;
%
%for i= 5 upto 35:
%	path p, q;
%	p= z[100+i]--z5;
%	q= z1--z3;
%	z[175+i]= p intersectionpoint q;
%%	dotlabel(btex etex,z[160+i]);
%endfor;
%
%for  i = 0 upto 30:
%	for j = -30 upto 35:
%		z[250 + 70i + j] =  whatever[z[170 - i],z[175+5 + i]] = whatever[z[100+j], z5];
%	endfor;
%endfor;
%
%for  i = 0 upto 29:
%	for j = 0 - i step 2 until 4 + i:
%		path q;
%		q =  z[250 + 70i + j]--z[250 + 70i + j+1]--z[250 + 70i + j+1+70]--z[250 + 70i + j+70]-- cycle ;	
%		if i = 0 :
%			fill q withcolor  0white ;
%		else : if i = 1:
%			fill q withcolor  0.05white ;
%		else : if i = 2 :
%			fill q withcolor  0.1white ;
%		else :if i = 3 :
%			fill q withcolor  0.14white ;
%		else : if i = 4 :
%			fill q withcolor  0.185white ;
%		else : if i = 5:
%			fill q withcolor  0.265white ;
%		else : if i = 6 :
%			fill q withcolor  0.3white ;
%		else : if i = 7 :
%			fill q withcolor  0.336white ;
%		else : if i = 8 :
%			fill q withcolor  0.37white ;
%		else : if i = 9:
%			fill q withcolor  0.4white ;
%		else : if i = 10 :
%			fill q withcolor  0.43white ;
%		else :
%			fill q withcolor  0.46white ;
%		fi
%		fi
%		fi
%		fi
%		fi
%		fi
%		fi
%		fi
%		fi
%		fi
%		fi	
%	endfor;
%endfor;
%
%path p;
%p= z140--z210--z9--z8-- cycle;
%fill p withcolor  0.75white ;	
%
%%guidelines to see the vanishing point
%for  i = 0 upto 12 :
%	if i < 7 :
%		pickup pencircle scaled 0.2pt;
%	else : if i < 15 :
%		pickup pencircle scaled 0.1pt;
%	else : 
%		pickup pencircle scaled 0.05pt;
%	fi
%	fi
%	draw z[250 +700+ 70i + 2 - i]--z[250 +70*30 + 2 - i];
%	draw z[250 +700+ 70i + 3 + i]--z[250 +70*30 + 3+ i];
%endfor;
%
%%dotlabel(btex  etex,z5);
%label(btex  etex,z2);
%label(btex  etex,z3);
%path p;
%p= z9--z8--z2--z3-- cycle;
%fill p withcolor  0.88white ;	
%endfig;

numeric a, e, f;
a= 12pt;
e=10a;
f=10a;

beginfig(7);
z0=(0,0);
z1=z0+(2e,0);
z2=z0+(0,1.5f);
z3=z1+(0,1.5f);
z5=z0+(e,f);%vanishing point

%label(btex  etex,z2);
%label(btex  etex,z3);
path p;
p= z0--z1--z3--z2-- cycle;
fill p withcolor  0.9white ;	

z6 = z0+(0,f);
z7 = z1+(0,f);
z8 = z6 -(0,0.2a);
z9 = z7 -(0,0.2a);
for i=-30 upto 35:
	z[100+i]= z0 + (4a*i,0);
endfor;

for i=-30 upto 0:
	path p, q;
	p= z[100+i]--z5;
	q= z0--z2;
	z[170+i]= p intersectionpoint q;
endfor;

for i= 5 upto 35:
	path p, q;
	p= z[100+i]--z5;
	q= z1--z3;
	z[175+i]= p intersectionpoint q;
%	dotlabel(btex etex,z[160+i]);
endfor;

for  i = 0 upto 30:
	for j = -30 upto 35:
		z[250 + 70i + j] =  whatever[z[170 - i],z[175+5 + i]] = whatever[z[100+j], z5];
	endfor;
endfor;

for  i = 0 upto 29:
	for j = 0 - i step 2 until 4 + i:
		path q;
		q =  z[250 + 70i + j]--z[250 + 70i + j+1]--z[250 + 70i + j+1+70]--z[250 + 70i + j+70]-- cycle ;	
		if i = 0 :
			fill q withcolor  0white ;
		else : if i = 1:
			fill q withcolor  0.05white ;
		else : if i = 2 :
			fill q withcolor  0.1white ;
		else :if i = 3 :
			fill q withcolor  0.14white ;
		else : if i = 4 :
			fill q withcolor  0.185white ;
		else : if i = 5:
			fill q withcolor  0.265white ;
		else : if i = 6 :
			fill q withcolor  0.3white ;
		else : if i = 7 :
			fill q withcolor  0.336white ;
		else : if i = 8 :
			fill q withcolor  0.37white ;
		else : if i = 9:
			fill q withcolor  0.4white ;
		else : if i = 10 :
			fill q withcolor  0.43white ;
		else :
			fill q withcolor  0.46white ;
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
	endfor;
endfor;

path p, q;
p = z140--z210--z9--z8-- cycle;
q = z6--z7--z9--z8-- cycle;
%
fill p withcolor  0.6white ;
fill q withcolor  0.7white ;	

pickup pencircle scaled 0.1pt;
draw z7--z6;

%guidelines to see the vanishing point
for  i = 0 upto 12 :
	if i < 7 :
		pickup pencircle scaled 0.2pt;
	else : if i < 15 :
		pickup pencircle scaled 0.1pt;
	else : 
		pickup pencircle scaled 0.1pt;
	fi
	fi
	draw z[250 +700+ 70i + 2 - i]--z[250 +70*30 + 2 - i];
	draw z[250 +700+ 70i + 3 + i]--z[250 +70*30 + 3+ i];
endfor;

pickup pencircle scaled 0.1pt;
for  i = 0 step 2 until 4 :
	z[1000+250 +70*30 + 2 - i]=whatever[z[250 +70*30 + 2 - i], z5]= whatever[z9, z8];
	z[1000+250 +70*30 + 3+ i]=whatever[z[250 +70*30 + 3+ i], z5]= whatever[z9, z8];
	draw z[250 +70*30 + 2 - i]--z[1000+250 +70*30 + 2 - i];
	draw z[250 +70*30 + 3+ i]--z[1000+250 +70*30 + 3+ i];
endfor;
for  i = 6 step 4 until 14 :
	z[1000+250 +70*30 + 2 - i]=whatever[z[250 +70*30 + 2 - i], z5]= whatever[z9, z8];
	z[1000+250 +70*30 + 3+ i]=whatever[z[250 +70*30 + 3+ i], z5]= whatever[z9, z8];
	draw z[250 +70*30 + 2 - i]--z[1000+250 +70*30 + 2 - i];
	draw z[250 +70*30 + 3+ i]--z[1000+250 +70*30 + 3+ i];
endfor;
for  i = 18 step 5 until 30 :
	z[1000+250 +70*30 + 2 - i]=whatever[z[250 +70*30 + 2 - i], z5]= whatever[z9, z8];
	z[1000+250 +70*30 + 3+ i]=whatever[z[250 +70*30 + 3+ i], z5]= whatever[z9, z8];
	draw z[250 +70*30 + 2 - i]--z[1000+250 +70*30 + 2 - i];
	draw z[250 +70*30 + 3+ i]--z[1000+250 +70*30 + 3+ i];
endfor;

%dotlabel(btex  etex,z5);
%label(btex  etex,z2);
%label(btex  etex,z3);

%path p;
%p= z7--z6--z2--z3-- cycle;
%fill p withcolor  0.75white ;	
%dotlabel(btex $ $ etex,z5);
endfig;

numeric d;
d=7a;

beginfig(8);
z0=(0,0);
z1=z0+(2e,0);
z2=z0+(0,1.5f);
z3=z0+z1+z2;
z5=z0+(e-d,f);%vanishing point
z6=z0+(e+d,f);%vanishing point

path p;
p= z0--z1--z3--z2-- cycle;
fill p withcolor  0.9white ;	

z8 = z0+(0,0.98f);
z9 = z1+(0,0.98f);
z10 = z0+(0,f);
z11 = z1+(0,f);

for i=-30 upto 64:
	z[100+i]=z0 + (5a*i,0); 
endfor;

for  i = 1 upto 30:
	for j = -30 upto 33:
		z[100 + 100i + j] =  whatever[z[100+j ],z6] = whatever[z[100+j+i], z5];
	endfor;
endfor;

for  i = 0 step 2 until  26:
	for j = -3 -  i upto 5 + i :
		path q;
			q =  z[100 + 100i + j]--z[200 + 100i + j]--z[300 + 100i + j-1]--z[200 + 100i + j-1]-- cycle ;	
		if i = 0 :
			fill q withcolor  0white ;
		else : if i = 1:
			fill q withcolor  0.05white ;
		else : if i = 2 :
			fill q withcolor  0.1white ;
		else :if i = 3 :
			fill q withcolor  0.14white ;
		else : if i = 4 :
			fill q withcolor  0.185white ;
		else : if i = 5:
			fill q withcolor  0.265white ;
		else : if i = 6 :
			fill q withcolor  0.3white ;
		else : if i = 7 :
			fill q withcolor  0.336white ;
		else : if i = 8 :
			fill q withcolor  0.37white ;
		else : if i = 9:
			fill q withcolor  0.4white ;
		else : if i = 10 :
			fill q withcolor  0.43white ;
		else :
			fill q withcolor  0.46white ;
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
	endfor;
endfor;

path p, q;
p= z2670--z2730--z9--z8-- cycle;
q = z10--z11--z9--z8-- cycle;
fill p 	withcolor  0.75white ;	
fill q 	withcolor  0.8white ;	

pickup pencircle scaled 0.1pt;
for  j= 0 upto 10 :
	z[1000+100 + 100*30 + j] = whatever[z[100 + 100*30 + j], z6]= whatever[z8, z9];
	draw z[100 + 100*30 + j]--z[1000+100 + 100*30 + j];
endfor;

for   j= 2 upto 10 :
	 z[1000+100 + 100*29 -j -14 -6]= whatever[z[100 + 100*29 -j -14 -6],z5]= whatever[z8, z9];
	draw z[100 + 100*15 - j - 6]--z[1000+100 + 100*29 -j -14 -6];
endfor;
%for   j= 8 upto 16 :
%	z[1000+100 + 100*29 -j -14]= whatever[z[100 + 100*29 -j -14],z5]= whatever[z8, z9];
%	draw z[100 + 100*29 -j -14]--z[1000+100 + 100*29 -j -14];
%endfor;
%guideline to see the vanishing point
pickup pencircle scaled 0.2pt;
for   j= 0 upto 10 :
	draw z[100 + 100*15 + j]--z[100 + 100*30 + j];
endfor;
for   j= 2 upto 10 :
	draw z[100 + 100*15 - j - 6]--z[100 + 100*29 -j -14 -6];
endfor;
for   j= 8 upto 16 :
	draw z[100 + 100*15 - j]--z[100 + 100*29 -j -14];
endfor;
%
%dotlabel(btex  etex,z5);
%dotlabel(btex  etex,z6);
%label(btex  etex,z2);
%label(btex  etex,z3);
%path p;
%p= z9--z8--z2--z3-- cycle;
%fill p withcolor  0.9white ;	

endfig;


%beginfig(8);
%z0=(0,0);
%z1=z0+(2e,0);
%z2=z0+(0,1.5f);
%z3=z0+z1+z2;
%z5=z0+(e-d,f);%vanishing point
%z6=z0+(e+d,f);%vanishing point
%
%for i=-30 upto 32:
%	z[100+i]=(10a*i,0);
%endfor;
%for i=-30 upto 0:
%	path p, q;
%	p= z[100+i]--z5;
%	q= z0--z2;
%	z[300+i]= p intersectionpoint q;
%	draw z[300+i]--z5;
%endfor;
%
%for i=0 upto 2:
%	draw z[100+i]--z5;
%endfor;
%
%for i=3 upto 32:
%	path p, q;
%	p= z[100+i]--z5;
%	q= z1--z3;
%	z[300+i]= p intersectionpoint q;
%	draw z[300+i]--z5;
%endfor;
%
%for i=-30 upto 0:
%	path p, q;
%	p= z[100+i]--z6;
%	q= z0--z2;
%	z[400+i]= p intersectionpoint q;
%	draw z[400+i]--z6;
%endfor;
%
%for i=0 upto 2:
%	draw z[100+i]--z6;
%endfor;
%for i=3 upto 32:
%	path p, q;
%	p= z[100+i]--z6;
%	q= z1--z3;
%	z[500+i]= p intersectionpoint q;
%	draw z[500+i]--z6;
%endfor;
%
%z559=(0,f);
%z560=(2e,f);
%draw z559--z560;
%
%label(btex  etex,z2);
%label(btex  etex,z3);
%endfig;
%
%beginfig(8);
%z0=(0,0);
%z1=z0+(2e,0);
%z2=z0+(0,1.5f);
%z3=z0+z1+z2;
%z5=z0+(e-d,f);%vanishing point
%z6=z0+(e+d,f);%vanishing point
%
%path p;
%p= z0--z1--z3--z2-- cycle;
%fill p withcolor  0.9white ;	
%
%z8 = z0+(0,0.95f);
%z9 = z1+(0,0.95f);
%
%for i=-30 upto 64:
%	z[100+i]=z0 + (5a*i,0); 
%endfor;
%
%for  i = 1 upto 30:
%	for j = -30 upto 33:
%		z[100 + 100i + j] =  whatever[z[100+j ],z6] = whatever[z[100+j+i], z5];
%	endfor;
%endfor;
%
%for  i = 0 step 2 until  26:
%	for j = -3 -  i upto 5 + i :
%		path q;
%			q =  z[100 + 100i + j]--z[200 + 100i + j]--z[300 + 100i + j-1]--z[200 + 100i + j-1]-- cycle ;	
%		if i = 0 :
%			fill q withcolor  0white ;
%		else : if i = 1:
%			fill q withcolor  0.05white ;
%		else : if i = 2 :
%			fill q withcolor  0.1white ;
%		else :if i = 3 :
%			fill q withcolor  0.14white ;
%		else : if i = 4 :
%			fill q withcolor  0.185white ;
%		else : if i = 5:
%			fill q withcolor  0.265white ;
%		else : if i = 6 :
%			fill q withcolor  0.3white ;
%		else : if i = 7 :
%			fill q withcolor  0.336white ;
%		else : if i = 8 :
%			fill q withcolor  0.37white ;
%		else : if i = 9:
%			fill q withcolor  0.4white ;
%		else : if i = 10 :
%			fill q withcolor  0.43white ;
%		else :
%			fill q withcolor  0.46white ;
%		fi
%		fi
%		fi
%		fi
%		fi
%		fi
%		fi
%		fi
%		fi
%		fi
%		fi	
%	endfor;
%endfor;
%
%path p;
%p= z2670--z2730--z9--z8-- cycle;
%fill p 	withcolor  0.75white ;	
%
%%guideline to see the vanishing point
%pickup pencircle scaled 0.1pt;
%for   j= 0 upto 10 :
%	draw z[100 + 100*15 + j]--z[100 + 100*30 + j];
%endfor;
%%for   j= 2 upto 10 :
%%	draw z[100 + 100*15 - j - 6]--z[100 + 100*29 -j -14 -6];
%%endfor;
%for   j= 8 upto 16 :
%	draw z[100 + 100*15 - j]--z[100 + 100*29 -j -14];
%endfor;
%
%%dotlabel(btex  etex,z5);
%%dotlabel(btex  etex,z6);
%%label(btex  etex,z2);
%%label(btex  etex,z3);
%%path p;
%%p= z9--z8--z2--z3-- cycle;
%%fill p withcolor  0.9white ;	
%
%endfig;

numeric a;
a= 6pt;

beginfig(9);
z0=(0,3a);
z1=z0+(30a,-3a) ; %vanishing point 1
z2=z0+(0,-3a) ; %vanishing point 2
z3=z0+(15a,22a) ;%vanishing point 3
z4=z0+(15a,3a) ; %center
z5=0.3[z4,z1];
z6=0.3[z4,z2];
z7=0.4[z4,z3];
z8=whatever[z5,z2]=whatever[z6,z1];
z9=whatever[z7,z2]=whatever[z6,z3];
z10=whatever[z5,z3]=whatever[z7,z1];
draw z4--z5--z8--z6-- cycle ;
draw z4--z7 ;
draw z6--z9 ; 
draw z5--z10;
draw z7--z9 ;
draw z7--z10 ;
draw z1--z5  dashed evenly ;
draw z2--z6  dashed evenly ;
draw z3--z7  dashed evenly ;
draw z1--z8 dashed evenly ;
draw z1--z10 dashed evenly ;
draw z2--z8 dashed evenly ;
draw z2--z9 dashed evenly ;
draw z3--z9 dashed evenly ;
draw z3--z10  dashed evenly ;
dotlabel(btex  etex,z1);
dotlabel(btex  etex,z2);
dotlabel(btex  etex,z3);
endfig;


%beginfig(9);
%z0=(0,3a);
%z1=z0+(30a,20a); %vanishing point 1
%z2=z0+(0,20a);%vanishing point 2
%z3=z0+(15a,-3a);%vanishing point 3
%z4=z0+(15a,13a); %center
%z5=0.3[z4,z1];
%z6=0.3[z4,z2];
%z7=0.3[z4,z3];
%z8=whatever[z5,z2]=whatever[z6,z1];
%z9=whatever[z7,z2]=whatever[z6,z3];
%z10=whatever[z5,z3]=whatever[z7,z1];
%draw z4--z5--z8--z6-- cycle ;
%draw z4--z7 ;
%draw z6--z9 ; 
%draw z5--z10;
%draw z7--z9 ;
%draw z7--z10 ;
%draw z1--z5  dashed evenly ;
%draw z2--z6  dashed evenly ;
%draw z3--z7  dashed evenly ;
%draw z1--z8 dashed evenly ;
%draw z1--z10 dashed evenly ;
%draw z2--z8 dashed evenly ;
%draw z2--z9 dashed evenly ;
%draw z3--z9 dashed evenly ;
%draw z3--z10  dashed evenly ;
%dotlabel(btex  etex,z1);
%dotlabel(btex  etex,z2);
%dotlabel(btex  etex,z3);
%endfig;


beginfig(10);
z0=(17a,3a);
z1=z0-(17a,0);
z2=z0+(10a,0);
z3=z0-(0,3a);
z4=z0+(0,6a);
z5=z0+(5a,4a);
z6=z0+(-13a,0);
z7=whaterver[z5,z6]=whaterer[z3,z4];
z8=z0+(0,4a);
z9=z0+(5a,0);

drawarrow z1--z2;
drawarrow z3--z4;
draw z5--z6;
drawarrow z5--z7;
drawarrow z5--z8;
draw z5--z9 dashed evenly;

label.lrt(btex $\mathbf 0$ etex,z0);
label.rt(btex $x$ etex,z2);
label.top(btex $y$ etex,z4);
dotlabel.rt(btex $(x,y)$ etex,z5);
dotlabel.bot(btex $ -a$ etex,z6);
label.bot(btex $-\infty\leftarrow $ etex,z1);
label.lrt(btex$\frac{ a}{x+a}y$ etex,z7);
label.lft(btex$y$ etex,z8);
dotlabel.bot(btex$x$ etex,z9);

endfig;


beginfig(11);
z0=(-10a,9a);%Origen, viewpoint
%frame
z1=(5a,0);%x-axis line of sight
z2=(2a,-2.7a);%y-axis
z3=(0,5a);%z-axis

%window
z4=(15a,0);%distance
z5=z0+z4-z2+2.5z3;%upper left vertex
z6=z5+3.5z2;
z7=z6-3z3;
z8=z7-3.5z2;
label.lft(btex 投影面 etex,z8);

draw z5--z6--z7--z8-- cycle;

%pyramid 
z11=0.7z2+0.5z1;
z12=0.7z2-0.9z1;
z20=(30a,0);%distance
z21=z0+z20+z11+0.5z3;%the center of object
z22=z21+1.3z3;%top vertex 
z23=z21-z11-z12;%front vertex
z24=z23+2z11;
z25=z24+2z12;
z26=z25-2z11;
z27=z26-2z12;

draw z24--z25--z26;
draw z26--z23--z24 dashed evenly;
draw z22--z23 dashed evenly;

for i=24 upto 26:
   draw z22--z[i];
endfor;

%parallel pyramid
z121=z21-z20;
z122=z22-z20;
z123=z23-z20;
z124=z24-z20;
z125=z25-z20;
z126=z26-z20;
z127=z27-z20;

%window
z32=0.42[z122,z22];
z33=0.355[z123,z23];
z35=0.46[z125,z25];
z36=0.625[z126,z26];

z42=whatever[z122,z22]=whatever[z5,z6];
z45=whatever[z125,z25]=whatever[z6,z7];
z46=whatever[z126,z26]=whatever[z6,z7];
z48=whatever[z123,z23]=whatever[z6,z7];
z43=whatever[z123,z23]=whatever[z22,z26];

draw z22--z42 withcolor red ;
drawarrow z42--z32 dashed evenly withcolor red ;
draw z23--z43 dashed evenly withcolor red ;
draw z43--z48 withcolor red ;
drawarrow z48--z33 dashed evenly withcolor red ;
draw z25--z45 withcolor red ;
drawarrow z45--z35 dashed evenly withcolor red ;
draw z26--z46 withcolor red ;
drawarrow z46--z36 dashed evenly withcolor red ;

pickup pencircle scaled 1pt;
draw z33--z36--z35;
draw z32--z33;
draw z32--z35;
draw z32--z36;
endfig;


beginfig(12);
z0=(8a,8a);
z1=z0+(8a,0);
z2=z0+(0,8a);
z3=z0-(8a,0);
z4=z0-(0,8a);
z50= z0 +  (30a/5, 22a/5) ;
z51= z0 - (30a/5, 22a/5) ; 
draw z1..z2..z3..z4.. cycle;

for i=0 upto 36 :
	z[10+i] = z0+ ( 2a * sind( 10 * i  ), 8a * cosd( 10 * i ));
endfor;

pickup pencircle scaled 1pt;
drawarrow z10..
for i=1 upto 17 :
	z[10+i]..
endfor
z28 dashed evenly;
drawarrow z28..
for i=19 upto 35 :
	z[10+i]..
endfor
z46;

drawarrow z0--z22;
drawarrow z0--z40;
drawarrow z0--z50;
drawarrow z0--z51  dashed evenly;
dotlabel( btex etex,z0);
endfig;

beginfig(13);
z0=(0,0);
z1=z0+(15a,0);
z2=z1+(0,15a);
z3=z2-(15a,0);
z4=z3 - (0,15a);
z10=z0+(15a/2,6a);
for i=1 upto 36 :
	z[10+i] = z10+ (7a * cosd( 10 * i ), 7a * sind( 10 * i  ) );
endfor;
%draw z1--z2--z3--z4-- cycle ;

label.llft(btex $\mathbf P^2$ etex,z2);
label.ulft(btex $\mathbf P^1_0$ etex,z20);
label.rt(btex $\mathbf P^1_2$ etex,z44);
label.urt(btex $\mathbf P^1_1$ etex,z18);

pickup pencircle scaled 1pt;
draw z42--z[42+14-36];
draw z18--z[18+14];
draw z30--z[30+14];
endfig;

beginfig(14);
z0=(0,0);
%camera
z1 = z0+(15a,3a);
z2 = z1-(0,3a);
z3 = z2+(5a,0);
z4 = z3+(0,7a);
z5 = z4-(5a,0);
z6 = z5-(0,3a);
z9 =0.5[z1,z6];%pin hole
draw
for i=1 upto 5:
 z[i]--
endfor
z6 ;

%object
z11 = z0;
z12 = z0+(0,6a);
z13 = z12-(a,a);
z14 = z12 +(a,-a);

%projection 
z15 = z3 -(2a/3,0); %guide point
z16 = z4 -(2a/3,0);
z17 = z15 + (2a/3,0);
z18 = z16 + (2a/3,0);
z19 = z15 - (2a/3,0);
z20 = z16 - (2a/3,0);
%intersection of the line of object to center and the guide line
z21 = whatever[z11,z9] =  whatever[z15,z16];
z22 = whatever[z12,z9] =  whatever[z15,z16];
z23 = whatever[z13,z9] =  whatever[z17,z18];
z24 = whatever[z14,z9] =  whatever[z19,z20];
draw z15--z16 dashed evenly;%glass

pickup pencircle scaled 1pt;
draw z11--z12;
draw z13--z12--z14;
draw z21--z22;
draw z23--z22--z24;

draw z11--z21 withcolor red;
draw z12--z22 withcolor blue;

endfig;

beginfig(15);
z0=(0,0);
%camera
z1 = z0 + (15a,a);
z2 = z1 + (2a,0);
z3 = z2 - (0,a);
z4 = z3 + (4a,0);
z5 = z4 + (0,7a);
z6 = z5 - (4a,0);
z7 = z6 - (0,a);
z8 = z7 - (2a,0);
z9 =0.5[z1,z8];%the center of the lens
draw
	for i=1 upto 7:
 		z[i]--
	endfor
	z8 ;

%object
z11 = z0;
z12 = z0+(0,6a);
z13 = z12-(a,a);
z14 = z12 +(a,-a);

%projection 
z15 = z4 -(2a/3,0); %guide
z16 = z5 -(2a/3,0);
z17 = z15 + (2a/3,0);
z18 = z16 + (2a/3,0);
z19 = z15 - (2a/3,0);
z20 = z16 - (2a/3,0);
%intersection of the line of object to center and the guide line
z21 = whatever[z11,z9] =  whatever[z15,z16];
z22 = whatever[z12,z9] =  whatever[z15,z16];
z23 = whatever[z13,z9] =  whatever[z17,z18];
z24 = whatever[z14,z9] =  whatever[z19,z20];
draw z15--z16 dashed evenly;%film

pickup pencircle scaled 0.75pt;
%lens
draw z1{dir 110}..{dir 70}z8;
draw z1{dir 70}..{dir 110}z8;

draw z11--z21 withcolor red;
draw z11--z1--z21 withcolor red;
draw z11--z8--z21 withcolor red;
draw z12--z22 withcolor blue;
draw z12--z1--z22 withcolor blue;
draw z12--z8--z22 withcolor blue;

pickup pencircle scaled 1pt;
draw z11--z12;
draw z13--z12--z14;
draw z21--z22;
draw z23--z22--z24;
endfig;

beginfig(16);
%perspective method
z0 = (-2.5a,0);
for i= 1 upto 19:
	z[i] = z0  + (2.5i*a,0);
endfor;

for i= 1 upto 19:
	z[20+i] = z0  + (2.5i*a,15a);
endfor;

draw z1--z19;
draw z21--z39;

for i = 2 step 2 until 8:
	path p, q;
	p = z[i]--z30;
	q = z8--z28;
	z[50+i] = p intersectionpoint q;
	draw p;
endfor;
draw z10--z30;
for i = 12 step 2 until 18:
	path p, q;
	p = z[i]--z30;
	q =  z12--z32;
	z[70+i] = p intersectionpoint q;
	draw p;
endfor;
draw z8--z28;
draw z12--z32;
label.top(btex $y=a/b$ etex,z32);
label.top(btex $y=-a/b$ etex,z28);

for i= 1 upto 5:
	z[100+i] = z0  + (2.5i*a,7.5a);
	draw z[100+i]--z30 withcolor red;
endfor;
for i= 2 upto 5:
	z[110+i]  = whatever[z21,z1] = whatever[z30,z[100+i]];
	draw z[100+i]--z[110+i] withcolor blue;
endfor;

for i = 2 step 2 until 8:
	draw (x1,y[50+i])--(x19,y[90-i]);
endfor;

label.rt(btex $\ell_4$ etex,(x19,y88));
label.rt(btex $\ell_3$ etex,(x19,y86));
label.rt(btex $\ell_2$ etex,(x19,y84));
label.rt(btex $\ell_1$ etex,z19);
label.bot(btex ${\ell'}_4$ etex,z18);
label.bot(btex ${\ell'}_3$ etex,z16);
label.bot(btex ${\ell'}_2$ etex,z14);
label.bot(btex ${\ell'}_1$ etex,z12);
label.bot(btex ${\ell'}_0$ etex,z10);
label.bot(btex ${\ell'}_{-1}$ etex,z8);
label.bot(btex ${\ell'}_{-2}$ etex,z6);
endfig;

beginfig(17);
z0 = (0,-2a);
z1 = (4a,3a);
z2 =(0, 5a);
z3 = (18a,0);
z4 =  (21a,0);
for i=1 upto 3:
	z[10i+1] = z0 + (i-1)*z3 ;
	z[10i+2] = z0 + (i-1)*z3 + z1;
	z[10i+3] = z0  + (i-1)*z3 + z1 + z2;
	z[10i+4] = z0  + (i-1)*z3 + z1 + 3z2;
	z[10i+5] = z0  + (i-1)*z3 + 3z2;
	z[10i+6] = z0  + (i-1)*z3 + z2;
	z[10i+7] = z0  + (i-1)*z3 + 0.5z1+ z2;
	z[10i+8] = z0  + (i-1)*z3 + 0.7z1+ z2;
	z[10i+9] = z0  + (i-1)*z3 + 0.7z1+ 2z2;
	z[10i+10] = z0  + (i-1)*z3 + 0.5z1+ 2z2;
endfor;
for j = 1 upto 10:
	z[40+j]  = z[10+j]  +  z4;
endfor;
for i = 1 upto 20:
 	z[50 +i ] = (i/10-0.5)[z18,z38] ;
endfor;

for i=2 upto 2:
	draw 
		for j = 1 upto 6:
			z[10i+j]--
		endfor
		cycle ;
endfor;

for  i = 6 upto 10:
	draw z[50 +i ]--z50 withcolor blue;
endfor;

for  i = 1 upto 5:
	z[100 +i ] = whatever[z[50 + i],z50] = whatever[z18,z20];
 	draw z[100 +i ]--z50 withcolor blue;
endfor;

draw z16--z46--z43--z13-- cycle;
%draw z16--z36--z33--z13-- cycle;
draw z26--z23;
draw z20--z50 withcolor red;
draw z18--z48 withcolor red;
%draw z20--z40 withcolor red;
%draw z18--z38 withcolor red;

pickup pencircle scaled 1pt;
draw z50--z47--z27;
draw z28--z30 withcolor red;

dotlabel.rt(btex $\mathbf 0$ etex,z50);
label.lrt(btex $x=1$ etex,z24);
label.bot(btex $z=-1$ etex,0.5[z16,z46]);
endfig;

numeric c;
c = 1pt;
beginfig(18);
z0 = (0,0);
z1 = z0 + (0,6a);
z2 = z1 + (0,3a);
z3 = z1 - (0,3a);
z4 = z2-(2a,2a);
z5= z2 +(2a,-2a);

z9 = z1 + (33a, 0);
for i = 1 upto 15:
	for j=0 upto 90:
		z[100i + j] = z9 + (5a + c*(i-2) )* (-cosd(4j), -sind(4j));
	endfor;
endfor;

for i=6 step 2 until 8:
	draw z[100i+6]..
	for j = 7 upto 83:
		z[100i + j]..
	endfor
	z[100i +84];
endfor;

draw z[810]..z[1300]..z[880];
draw z[980]..z[1400]..z[910];

draw z3--z2;
draw z4--z2--z5;

pickup pencircle scaled 0.75pt;
%lenz
%draw z[706]--z[784]; %test part
draw z[706]..z[100]..z[783];
draw z[706]..z[800]..z[783];

draw z3--z648  withcolor red;
draw z3--z706--z648  withcolor red;
draw z3--z784--z648  withcolor red;
draw z2--z642 withcolor blue;
draw z2--z706--z642 withcolor blue;
draw z2--z784--z642 withcolor blue;

pickup pencircle scaled 1pt;
draw z3--z2;
draw z4--z2--z5;

draw z442..
	for j = 1 upto 5:
		z[442+ j]..
	endfor
z448;

z7 = z442 + (a,a);
z8 = z442 + (-a,a);
draw z7--z442--z8;

endfig;

beginfig(19);
%perspective and camera obscura
z0=(0, 12a);
%camera
z1 = z0+(15a,3a);
z2 = z1-(0,3a);
z3 = z2+(5a,0);
z4 = z3+(0,7a);
z5 = z4-(5a,0);
z6 = z5-(0,3a);
z9 =0.5[z1,z6];%pin hole
draw
	for i=1 upto 5:
		z[i]--
	endfor
	z6 ;

%object
z11 = z0+(0,6a);
z12 = z0;
z13 = z12+ (-a,a);
z14 = z12 +(a,a);

%projection 
z15 = z3 -(2a/3,0); %guide point
z16 = z4 -(2a/3,0);
z17 = z15 + (2a/3,0);
z18 = z16 + (2a/3,0);
z19 = z15 - (2a/3,0);
z20 = z16 - (2a/3,0);
%intersection of the line of object to center and the guide line
z21 = whatever[z11,z9] =  whatever[z15,z16];
z22 = whatever[z12,z9] =  whatever[z15,z16];
z23 = whatever[z13,z9] =  whatever[z17,z18];
z24 = whatever[z14,z9] =  whatever[z19,z20];
draw z15--z16 dashed evenly;%glass 
label.bot(btex 投影面 etex, z15);

%object
z11 = z0+(0,6a);
z12 = z0;
z13 = z12+ (-a,a);
z14 = z12 +(a,a);

%pi-rotated image 
for i = 1 upto 4:
	z[24 + i] = z9 + z9 - z[10 + i];
endfor;

z50 = (8a,0); %translate 
for i= 9 upto 28:
	z[50 + i] = z[50] + z[i];
endfor;

draw z65--z66;
label.bot(btex 投影面 etex, z65);

z100 = (5a, -12a);
for i = 1 upto 28:
	z[100+i] = z100 + z[i];
endfor;

draw z115--z116;
draw z101--z102;
draw z105--z106;

label.bot(btex 投影面 etex, z115);

pickup pencircle scaled 1pt;
draw z11--z12;
draw z13--z12--z14;
draw z21--z22;
draw z23--z22--z24;

draw z75--z76;
draw z73--z72--z74;
draw z71--z72;
draw z77--z76--z78;

draw z11--z21 withcolor red;
draw z12--z22 withcolor blue;

draw z59--z76 withcolor blue;
draw z59--z75 withcolor red;

draw z111--z112;
draw z113--z112--z114;
draw z121--z122;
draw z123--z122--z124;
draw z125--z126;
draw z127--z126--z128;

draw z111--z125 withcolor red;
draw z112--z126 withcolor blue;
dotlabel.bot(btex etex, z59);
dotlabel.bot(btex etex, z109);
endfig;

beginfig(20);
z0 = (0,20a);
z1 = z0 - (30a,0 );
z2 = z0 + (43a,0 );

z3 = z0 + (20a, -16a);
z4 =0.25 [z3, z1];
z5 = 0.32 [z3, z2];

z6 = whatever[z4,z2] = whatever[z5,z1];
z7 = 0.5[z4, z5] + (0,10a);
z8 = z5 +(15a, 0);
z9 =  whatever[z8,z6] = whatever[z5,z7];

z10 = 1.2[z3, z6] ;
z11 = 0.167[z10, z1]; %0.25*2/3 = 0.167
z12 = 0.213[z10, z2]; %0.32*2/3 = 0.213
z13 = whatever[z11,z2] = whatever[z12,z1];
z14 = 0.5[z11, z12] + (0,6.6a);

z15 = whatever[z10,z11] = whatever[z4,z7];
z16 = whatever[z10,z14] = whatever[z4,z7];
z17 = whatever[z12,z14] = whatever[z4,z7];

z18 = whatever[z11,z14] = whatever[z0,z2];
z19 = whatever[z12,z14] = whatever[z0,z2];

z20 = z12 +  (10a, 0);
z21 = whatever[z20,z13] = whatever[z5,z7];
z22 = whatever[z20,z10] = whatever[z5,z7];

z30 = z0 + (0,3a);
z31 = z0 - (0, 20a);
z32 = z2 -  (0, 20a);

path p, q;
p = z3--z8--z9--z5-- cycle;
q = z21--z20--z22-- cycle;
fill p withcolor 0.5white;
fill q withcolor 0.5white;

path p;
p = z3--z4--z15--z11--z18--z0--z31--z32--z2--z19--z17--z7--z21--z20--z22--z9--z8-- cycle;
fill p withcolor 0.85white;

path p, q;
p = z3--z4--z7-- cycle;
q = z15--z11--z14--z16-- cycle;
fill p withcolor 0.9white;
fill q withcolor 0.9white;
draw p;
draw q;

path p, q;
p = z3--z5--z7-- cycle;
q = z16--z17--z14-- cycle;
fill p withcolor 0.6white;
fill q withcolor 0.6white;
draw p;
draw q;

%draw z4--z3--z5;
%draw z4--z7--z5;
%draw z3--z7;
%draw z15--z11--z14--z16;
%draw z14--z17;

draw z0--z18;
draw z2--z19;
label(btex $ $ etex ,z30);
endfig;

beginfig(21);
z0 = (0,20a);
z1 = z0 - (30a,0 );
z2 = z0 + (42a,0 );

z3 = z0 + (20a, -16a);
z4 =0.25 [z3, z1];
z5 = 0.32 [z3, z2];

z6 = whatever[z4,z2] = whatever[z5,z1];
z7 = 0.5[z4, z5] + (0,10a);
z8 = z5 +(15a, 0);
z9 =  whatever[z8,z6] = whatever[z5,z7];

z10 = 1.2[z3, z6] ;
z11 = 0.167[z10, z1]; %0.25*2/3 = 0.167
z12 = 0.213[z10, z2]; %0.32*2/3 = 0.213
z13 = whatever[z11,z2] = whatever[z12,z1];
z14 = 0.5[z11, z12] + (0,6.6a);

z15 = whatever[z10,z11] = whatever[z4,z7];
z16 = whatever[z10,z14] = whatever[z4,z7];
z17 = whatever[z12,z14] = whatever[z4,z7];

z18 = whatever[z11,z14] = whatever[z0,z2];
z19 = whatever[z12,z14] = whatever[z0,z2];

z20 = z12 +  (10a, 0);
z21 = whatever[z20,z13] = whatever[z5,z7];
z22 = whatever[z20,z10] = whatever[z5,z7];

z30 = z0 + (0,4a);
z31 = z0 - (0, 20a);
z32 = z2 -  (0, 20a);

path p, q;
p = z3--z8--z9--z5-- cycle;
q = z21--z20--z22-- cycle;
fill p withcolor 0.6white;
fill q withcolor 0.6white;

path p, q;
p = z3--z4--z7-- cycle;
q = z15--z11--z14--z16-- cycle;
fill p withcolor 0.9white;
fill q withcolor 0.9white;
draw p;
draw q;

path p, q;
p = z3--z5--z7-- cycle;
q = z16--z17--z14-- cycle;
fill p withcolor 0.7white;
fill q withcolor 0.7white;
draw p;
draw q;

%path p;
%p = z18--z0--z31--z32--z2--z19--z11--z15--z4--z3--z20--z21--z22-- cycle;
%fill p withcolor 0.8white;
%draw z4--z3--z5;
%draw z4--z7--z5;
%draw z3--z7;
%draw z15--z11--z14--z16;
%draw z14--z17;

draw z0--z18;
draw z2--z19;
label(btex $ $ etex ,z30);
endfig;


verbatimtex
\end{document}
etex;
end