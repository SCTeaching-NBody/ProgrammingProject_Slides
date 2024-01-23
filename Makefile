
.SUFFIXES: .tex .pdf

TGT=main.pdf

all: | $(TGT) reload

.tex.pdf:
	@latexmk -shell-escape -pdf $<
reload:
	@pkill -HUP mupdf || true
clean:
	@latexmk -c
	rm -rf *.nav *.snm *.vrb

.PHONY: all reload clean

