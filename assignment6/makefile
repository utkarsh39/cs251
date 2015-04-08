all:pdf clean

pdf: test.tex plot.tex
	pdflatex -shell-escape test.tex
	pdflatex -shell-escape plot.tex		

clean:
	rm *log
	rm *table
	rm *gnuplot
	rm *aux
