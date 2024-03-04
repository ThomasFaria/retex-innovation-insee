#!/bin/bash
set -e

DIR="~/.TinyTeX"
if [ -d "$DIR" ]; then
  # Take action if $DIR exists.
    rm -rf ~/.TinyTeX
    sudo apt update
    sudo apt-get install -y texlive 
    sudo apt-get install -y texlive-fonts-extra 
fi

pdflatex authorsample.tex        
bibtex authorsample.aux
pdflatex authorsample.tex        
pdflatex authorsample.tex
