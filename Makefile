# Makefile for LaTeX documents
shell = /bin/bash

main = main

.PHONY: all clean

all: $(main).pdf

$(main).pdf: $(main).tex HSI.bib
	pdflatex $(main).tex
	bibtex $(main) # Generates .bbl from .aux
	pdflatex $(main).tex
	pdflatex $(main).tex

clean:
	rm -f $(main).pdf *.aux *.bbl *.blg *.log *.out *.toc