prologues:=0;
input mptUser.mp;
mptSetTrueMeasure("1000");
outputtemplate:="%j%3c.mps";
string SAVfile;
SAVfile:=""&jobname&".sav";

beginfig(1);
numeric w,h,Xmin,Ymin,Xmax,Ymax;
w:=5mm; h:=5mm;
Xmin:=0- 2; Ymin:=0- 2;
Xmax:=0+ 7; Ymax:=0+ 4;
begingroup save _pth; path _pth; mptSavePen;
_pth:=(Xmin*w,0)--(Xmax*w,0);
pickup pencircle scaled 0.6pt;
draw _pth  ;
draw yajiri(_pth,6.0pt,40, 0.16,0) ;
mptRestorePen; endgroup;
setLabel(((Xmax*w,0)+origin),8.1206pt,5.73611pt, 1.0pt)((-2.84526pt,2.36806pt), 0)("$x$","1.0pt") ("withcolor background");
if not (origin=origin): begingroup save _theta,_pth; numeric _theta; path _pth; mptSavePen;
_theta:=angle(-origin); _pth:=((Xmax*w,0)+origin){dir(_theta+(0))} ..{dir(_theta-(0))}((Xmax*w,0));
pickup pencircle scaled 0.4pt;
draw _pth  ;
endgroup; fi
begingroup save _pth; path _pth; mptSavePen;
_pth:=(0,Ymin*h)--(0,Ymax*h);
pickup pencircle scaled 0.6pt;
draw _pth  ;
draw yajiri(_pth,6.0pt,40, 0.16,0) ;
mptRestorePen; endgroup;
setLabel(((0,Ymax*h)+origin),7.64635pt,5.73611pt, 3.13887pt)((3.82317pt,-5.98413pt), 0)("$y$","1.0pt") ("withcolor background");
if not (origin=origin): begingroup save _theta,_pth; numeric _theta; path _pth; mptSavePen;
_theta:=angle(-origin); _pth:=((0,Ymax*h)+origin){dir(_theta+(0))} ..{dir(_theta-(0))}((0,Ymax*h));
pickup pencircle scaled 0.4pt;
draw _pth  ;
endgroup; fi
 xdraw() kansu(sin(t)) (-1,6.5,20); xdraw(red) kansu(t) (-1,3.5,20); 
setLabel((origin+origin),10.37743pt,8.68532pt, 1.0pt)((10.37743pt,-2.69577pt), 0)("O","1.0pt") ("withcolor background");
if not (origin=origin): begingroup save _theta,_pth; numeric _theta; path _pth; mptSavePen;
_theta:=angle(-origin); _pth:=(origin+origin){dir(_theta+(0))} ..{dir(_theta-(0))}(origin);
pickup pencircle scaled 0.4pt;
draw _pth  ;
endgroup; fi
pair _zz; _zz:=llcorner currentpicture;
string SFTfile; SFTfile:=""&jobname&".sft";
write "\edef\mptsft{("&decimal xpart _zz&","&decimal ypart _zz&")}" to SFTfile;
write EOF to SFTfile;
currentpicture:=currentpicture shifted -_zz;
endfig;
write "\endinput" to SAVfile;
write EOF to SAVfile;
end.
