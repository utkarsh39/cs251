all:pdf flow graph

pdf: test.tex  plot1.tex
	pdflatex -shell-escape test.tex
	pdflatex -shell-escape plot1.tex	
flow: flow.tex	
	pdflatex -shell-escape flow.tex
graph: graph1.tex
	pdflatex -shell-escape graph1.tex	
clean:
	rm *aux
	rm *log
	rm *dot
	rm *fig*
