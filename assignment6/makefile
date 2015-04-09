all:pdf clean

pdf: test.tex plot.tex
	pdflatex -shell-escape test.tex
	pdflatex -shell-escape plot.tex	
flow: flow.tex	
	pdflatex -shell-escape flow.tex
clean:
	rm *aux
	rm *log
	rm *table
	rm *gnuplot
