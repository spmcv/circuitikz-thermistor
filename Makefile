all: tex svg

tex:
	latexmk example.tex

svg:
	dvisvgm --page=1-3 example.dvi

clean:
	latexmk -c 

distclean:
	latexmk -C
	rm *.svg
