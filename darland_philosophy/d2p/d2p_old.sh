unicon dot_to_paren_old 2>djd22
if [ $? -eq 0 ]; then
    echo "Compile worked"
else
    echo "Compile error"
    $EDITOR djd22
    exit
fi
rm $1_p.djd.tex
./dot_to_paren_old <$1.tex >$1_p.djd.tex 2>djd2
if [ $? -eq 0 ]; then
    echo "Dot to paren worked"
else
    echo "Dot to paren error"
    exit
fi
$EDITOR djd2
$EDITOR dbg.txt
# $EDITOR $1_p.djd.tex
pdflatex $1.tex
pdflatex $1_p.djd.tex
# $EDITOR $1.tex
# $EDITOR djd2
# evince $1.pdf
evince $1_p.djd.pdf
