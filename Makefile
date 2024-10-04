# Makefile for LaTeX documents
shell = /bin/bash

main = main

.PHONY: all clean

all:
	latexmk -pdf main.tex

clean:
	latexmk -C main.tex
	rm -f main.bbl main.run.xml main.bib
