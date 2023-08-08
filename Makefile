tex:
	latexmk example.tex

svg:
	dvisvgm --page=1-3 example.dvi

clean:
	latexmk -c 

clean-all:
	latexmk -C
	rm *.svg
