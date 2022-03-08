build:
	pdflatex awb.tex
	make clean
web:
	./tex_to_web --input awb.tex --output awb.html --name "A Witchy Best Friend"
clean:
	rm *.a *.dvi *.out *.swp *.fdb_latexmk *.fls *.ist *.toc *.synctex.gz *.aux *.glg *.glo *.gls *.log 2> /dev/null
prod:
	make web
	make build 
	cp awb.pdf ../website/pdfs/awb.pdf
	cp awb.tex ../website/pdfs/awb.tex
	cp awb.html ../website/web/awb/index.html
a4:
	make build 
	cp awb.pdf ../website/pdfs/awb-a4.pdf
all:
	make build 
	make web
.PHONY: clean
.IGNORE: clean