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

beginfig(1);
   z0 = (0,a);
   for i = 1 upto 14:
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
   label.bot(btex Client etex,z150);

   z199 = z0 + (15a, 0);
   for i = 1 upto 8:
      for j = 0 upto 9:
         z[ 200+ 10i + j] = z199 + (3i*a, (9-j)*b);
      endfor;
   endfor;
   drawarrow z[214]--z[284];
   drawarrow z[286]--z[216];
   z290 = 0.5[z247,z257] ;
   label.bot(btex Internet etex,z290);
  
   z299 = z199+ (25a, 0);
   for i = 1 upto 4:
      for j = 0 upto 9:
         z[ 300+ 10i + j] = z299 + (3i*a, 3(9-j)*b);
      endfor;
   endfor;
   draw z315--z345--z349--z319-- cycle;
   draw z326--z336;
   draw z327--z337;
   draw z328--z338;
   z350 = z329 + (2a, -a);
   label.bot(btex Server etex,z350);

endfig;

numeric a, b;
a = 8pt;
b = 6pt;

beginfig(2);
	z0 = (0,-14a);
	for i = 1 upto 15:
		for j = 0 upto 25:
			z[ 100i + j] = z0 + (2i*a, (25-j)*a);
		endfor;
	endfor;
	
	label(btex $<$html$>$ etex,z600);
	draw z601--z602;
	draw z203--z202--z1002--z1003;
	
	label(btex $<$head$>$ etex,z204);
	draw z205--z206;
	draw z107--z106--z606--z607;
	label(btex $<$meta$>$ etex,z108);
	label.rt(btex --\verb/@/charset etex,z208);
	
%	draw z208--z308;
	label(btex $<$title$>$ etex,z608);
	draw z609--z610;
	label(btex Test Page$\, \, \, \,\,$  etex,z611);
%	draw z309--z312;
%	
%	draw z302--z303;
%	label(btex Library etex,z304);
%	label(btex System etex,z504);
%	
	label(btex $<$body$>$ etex,z1004);
	draw z1005--z1006;
	draw z807--z806--z1306--z1307;
	label(btex $<$h1$>$ etex,z808);
	draw z809--z810;
	label(btex $<$p$>$ etex,z1308);
	label.rt(btex  $\, \, $ --\verb/@/id etex,z1308);
	
%	draw z711--z712;
	label(btex $\, \,  $Test Contents etex,z911);
	draw z1309--z1310;
	label.rt(btex Hello, Web application! etex,z1111);
%	draw z714--z715;
%	label(btex General etex,z716);
%	draw z717--z718;
%	label(btex Programming etex,z719);
%	draw z720--z721;
%	label(btex src etex,z722);
%      draw z723--z724;
%	label(btex programming.tex etex,z725);
%	
%	draw z702--z1002 dashed evenly;
%	draw z1002--z1003;
%	label(btex usr etex,z1004);
%	draw z1005--z1006;
%	label(btex local  etex,z1007);
%	draw z1008--z1009;
%	label(btex texlive etex,z1010);
%	draw z1011--z1012;
%	label(btex 2023 etex,z1013);
%	draw z1014--z1015;
%	label(btex universal-darwin etex,z1016);
%	draw z1017--z1018;
%	label(btex bin etex,z1019);
%	draw z1020--z1021;
%	label(btex latex etex,z1022);

endfig;

verbatimtex
\end{document}
etex;
end