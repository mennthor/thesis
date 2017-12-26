# Make local chapter only, for fast compilation

# TEXOPTS = -lualatex \
#           -interaction=nonstopmode \
#           -halt-on-error \
#           -output-directory=build

TEXOPTS = --output-directory=build --lualatex
TEXHEADER = ./inc/header.tex

TARGET = thesis

all: $(TARGET).pdf

local.pdf: $(TEXHEADER) $(TARGET).tex | build
	latexmk $(TEXOPTS) $(TARGET).tex

preview: ${TEXHEADER} $(TARGET).tex | build
	latexmk $(TEXOPTS) -pvc $(TARGET).tex


build:
	mkdir -p build

clean:
	rm -rf build
