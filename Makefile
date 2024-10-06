# Makefile for LaTeX documents
shell = /bin/bash

main = dnxj-minutes

.DEFAULT_GOAL := help

.PHONY: all clean

all:
	latexmk -pdf $(main)

clean:
	latexmk -C $(main).tex
	rm -f $(main).bbl $(main).run.xml $(main).bib

# -------------------- Makefile help

help:				## Print help for Makefile list
	@grep -E '(^[a-zA-Z_-]+:.*?##.*$$)|(^# --------------------)' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}{printf "\033[32m %-35s\033[0m %s\n", $$1, $$2}' | sed -e 's/\[32m # --------------------/[33m===============/'
