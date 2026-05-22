#!/bin/bash

# Step 1: Clean auxiliary files
rm -f *.aux *.bbl *.blg *.log 

# Step 2: Run pdflatex on the main .tex file
pdflatex bibtopic.tex

# Step 3: Run BibTeX for all .aux files
for auxfile in *.aux
do
    bibtex "$auxfile"
done

# Step 4: Run pdflatex twice on the main .tex file
pdflatex bibtopic.tex
pdflatex bibtopic.tex

# Optional: Display a message to indicate successful compilation
echo "Compilation complete."