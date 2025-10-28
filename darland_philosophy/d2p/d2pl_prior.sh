unicon dot_to_paren_no_polish 2>djd22
unicon fix_too_long 2>djd33
$EDITOR djd22
$EDITOR djd33
rm $1_p.tex
rm $1_pl.tex
./dot_to_paren_no_polish <$1.tex >$1_p.tex 2>djd2
./fix_too_long <$1_p.tex >$1_pl.tex 2>djd3
pdflatex $1.tex
pdflatex $1_p.tex
pdflatex $1_pl.tex
$EDITOR $1.tex
$EDITOR $1_p.tex
$EDITOR $1_pl.tex
$EDITOR djd2
$EDITOR djd3
evince $1.pdf
evince $1_p.pdf
evince $1_pl.pdf
