tex:
	latexmk example.tex

svg:
	dvisvgm example.dvi

clean:
	latexmk -c 

clean-all:
	latexmk -C
	rm *.svg
