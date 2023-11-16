#rev="e8af57"
#rev="9d0fd1"
rev="d53b296" # solo trasferimento QR-code

latexdiff-vc -r $rev paper.tex
pdflatex paper-diff$rev.tex
bibtex paper-diff$rev
pdflatex paper-diff$rev.tex
pdflatex paper-diff$rev.tex
./compress.sh paper-diff$rev.pdf
