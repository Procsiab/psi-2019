# Nome del PDF in uscita
OUTNAME=psi-2019
# Nome del file principale
MAINFILE=main
# Direttive del makefile che non sono associate ad alcun nome di file
.PHONY: pdf all clean $(OUTNAME).pdf

all: pdf clean

pdf: src/$(MAINFILE).tex
	@ latexmk -f -quiet -pdf -pdflatex="pdflatex -interaction=nonstopmode" -cd -outdir=../pdf -use-make src/$(MAINFILE).tex && \
		mv pdf/main.pdf pdf/$(OUTNAME).pdf

clean:
	@ latexmk -quiet -c -cd -outdir=../pdf src/$(MAINFILE).tex && \
		rm pdf/*.aux
