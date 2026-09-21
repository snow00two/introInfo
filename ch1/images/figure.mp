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
a = 8pt;
b = 6pt;

beginfig(1);
	z0 = (0,0);
	for i = 1 upto 10:
		for j = 0 upto 25:
			z[ 100i + j] = z0 + (3i*a, (25-j)*a);
		endfor;
	endfor;
	
	label(btex $ / $ (Macintosh HD) etex,z500);
	draw z501--z503;
	draw z103--z102--z702--z703;
	
	label(btex Applications etex,z104);
	draw z105--z107;
	label(btex TeX etex,z108);
	draw z109--z110;
	label(btex TeXShop.app etex,z111);
	draw z106--z306--z307;
	label(btex Utilites etex,z308);
	draw z309--z312;
	label(btex Terminal.app etex,z313);
	
	draw z302--z303;
	label(btex Library etex,z304);
	label(btex System etex,z504);
	
	label(btex Users etex,z704);
	draw z705--z706;
	label(btex snow00two etex,z707);
	draw z708--z709;
	label(btex Documents etex,z710);
	draw z711--z712;
	label(btex classRoom etex,z713);
	draw z714--z715;
	label(btex General etex,z716);
	draw z717--z718;
	label(btex Programming etex,z719);
	draw z720--z721;
	label(btex src etex,z722);
      draw z723--z724;
	label(btex programming.tex etex,z725);
	
	draw z702--z1002 dashed evenly;
	draw z1002--z1003;
	label(btex usr etex,z1004);
	draw z1005--z1006;
	label(btex local  etex,z1007);
	draw z1008--z1009;
	label(btex texlive etex,z1010);
	draw z1011--z1012;
	label(btex 2023 etex,z1013);
	draw z1014--z1015;
	label(btex universal-darwin etex,z1016);
	draw z1017--z1018;
	label(btex bin etex,z1019);
	draw z1020--z1021;
	label(btex latex etex,z1022);

endfig;

verbatimtex
\end{document}
etex;
end