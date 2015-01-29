all: dvi pdf

dvi: AP-GP.tex
	latex AP-GP.tex

pdf: AP-GP.tex cite.bib
	pdflatex AP-GP
	bibtex AP-GP
	pdflatex AP-GP
	pdflatex AP-GP
