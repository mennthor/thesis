TEXOPTS = --output-directory=build --lualatex
TEXHEADER = ../inc/header.tex
export TEXINPUTS=./:../inc:

all:

atmo_astro_nus: ${TEXHEADER} atmo_astro_nus.tex | build
	latexmk $(TEXOPTS) -pvc $@.tex


build:
	mkdir -p build

clean:
	rm -rf build
