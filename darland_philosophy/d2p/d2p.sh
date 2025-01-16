unicon dot_to_paren 2>djd22
# $EDITOR djd22
# $1_p.tex
./dot_to_paren <$1.tex >$1_p.tex 2>djd2
pdflatex $1.tex
pdflatex $1_p.tex
# $EDITOR $1.tex
# $EDITOR $1_p.tex
# $EDITOR djd2
evince $1.pdf
evince $1_p.pdf
