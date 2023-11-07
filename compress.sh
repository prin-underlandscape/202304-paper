#!/bin/bash

if [ $# -eq 0 ]; then
 echo "no arguments"
 exit 1
fi

bn=`basename $1 .pdf`
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$bn-compress.pdf $1 
