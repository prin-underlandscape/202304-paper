rev="e8af57"

latexdiff-vc -r $rev paper.tex
pdflatex paper-diff$rev.tex
bibtex paper-diff$rev
pdflatex paper-diff$rev.tex
pdflatex paper-diff$rev.tex
./compress.sh paper-diff$rev.pdf
