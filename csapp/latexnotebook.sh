#!/bin/bash

pdflatex "20150903-160354-rs2.2-MarksMathNotebook.tex"
makeindex "20150903-160354-rs2.2-MarksMathNotebook.idx" -s StyleInd.ist
biber "20150903-160354-rs2.2-MarksMathNotebook.bcf"
pdflatex "20150903-160354-rs2.2-MarksMathNotebook.tex"
pdflatex "20150903-160354-rs2.2-MarksMathNotebook.tex"

pdflatex "20140228-150825-rs2.2R-MathReferenceSheet.tex"


for FILENAME in ./*.tex

do
    OUTPUT="$(echo $FILENAME | sed 's/\(.*\)\..*/\1/')"
    rm "$OUTPUT.aux" "$OUTPUT.log" "$OUTPUT.out" "$OUTPUT.synctex.gz" "$OUTPUT.sagetex.sage" "$OUTPUT.sagetex.sage.py" "$OUTPUT.sagetex.scmd" "$OUTPUT.sagetex.sout" "$OUTPUT.synctex.gz" "$OUTPUT.bcf" "$OUTPUT.run.xml" "$OUTPUT.toc" "$OUTPUT.ptc" "$OUTPUT.tex.blg" "$OUTPUT.bbl" "$OUTPUT.blg" "$OUTPUT.idx" "$OUTPUT.ilg" "$OUTPUT.ind"
done
exit


