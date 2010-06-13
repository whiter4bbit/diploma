sources=$(wildcard *.tex)
pdf_objects=$(sources:.tex=.pdf)
pdflatex=pdflatex

%.pdf: %.tex
	$(pdflatex) $<

pdf: illustrations pdf_pres

pdf_pres: $(pdf_objects)

illustrations:
	make -C pics/ pics	

clean: 
	rm -f *.aux *.log *.nav *.pdf *.snm *.toc *.out *.vrb 
	make -C pics/ clean

all: clean pdf

