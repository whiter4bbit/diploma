dia_src=$(wildcard *.dia)
dia_images=$(dia_src:.dia=.eps)
dia=dia
dia_opts=-t eps-pango
epstopdf=epstopdf

%.eps : %.dia
	$(dia) $< -e $@ $(dia_opts)
	$(epstopdf) $@

pics: $(dia_images)

clean: 
	rm -f *.eps *.pdf

all: clean pics	


