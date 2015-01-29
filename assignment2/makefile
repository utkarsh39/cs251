all: dvi pdf clean

dvi: AP-GP.tex cite.bib
	latex AP-GP.tex
	bibtex AP-GP
	latex AP-GP.tex
	latex AP-GP.tex

pdf: AP-GP.tex cite.bib
	pdflatex AP-GP
	bibtex AP-GP
	pdflatex AP-GP
	pdflatex AP-GP
clean:
	rm *aux
	rm *bbl
	rm *blg
	rm *log
	rm *out
