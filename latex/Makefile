all:
	pdflatex index 
	bibtex index 
	pdflatex index
	pdftk ../capa/apostila.pdf index.pdf cat output apostila.pdf 
clean: 
	rm -fr *.aux *.log *.toc *.out *.bbl *.blg
 
purge: clean
	rm -fr *.pdf
 
