all: ironfleet.pdf

open: ironfleet.pdf
	open ironfleet.pdf

ironfleet.pdf: *.tex references.bib 
	pdflatex ironfleet.tex
	bibtex ironfleet 
	pdflatex ironfleet.tex
	pdflatex ironfleet.tex

clean:  
	rm -f ironfleet.pdf *.aux *.blg *.bbl *.log *.tmp *.xref *.idv *.4og *.4ct *.lg *.4tc *.out *~
