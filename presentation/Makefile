sources=$(wildcard *.tex)
pdf_objects=$(sources:.tex=.pdf)
pdflatex=pdflatex

%.pdf: %.tex
	$(pdflatex) $<

pdf: illustrations pdf_pres

pdf_pres: $(pdf_objects)

update_pdf:
	pdflatex presentation.tex

illustrations:
	make -C diagrams/ pics	

clean: 
	rm -f *.aux *.log *.nav *.pdf *.snm *.toc *.out *.vrb 
	make -C diagrams/ clean;

all: clean pdf

