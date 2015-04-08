all: dvi pdf clean

dvi: AP-GP.tex cite.bib resume1.tex
	latex AP-GP.tex
	bibtex AP-GP
	latex AP-GP.tex
	latex AP-GP.tex
	latex resume1.tex

pdf: AP-GP.tex cite.bib resume.tex
	pdflatex AP-GP
	bibtex AP-GP
	pdflatex AP-GP
	pdflatex AP-GP
	pdflatex resume.tex
clean:
	rm *aux
	rm *bbl
	rm *blg
	rm *log
	rm *out
