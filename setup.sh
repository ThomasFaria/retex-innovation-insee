#!/bin/bash
set -e

if ! command -v pdflatex; then
    rm -rf ~/.TinyTeX
    sudo apt update
    sudo apt-get install -y texlive 
    sudo apt-get install -y texlive-fonts-extra 
fi

pdflatex authorsample.tex        
pdflatex authorsample.tex
