TEXOPTS = --output-directory=build --lualatex
TEXHEADER = ../inc/header.tex

TARGET = metrics

all: $(TARGET).pdf

$(TARGET).pdf: $(TEXHEADER) $(TARGET).tex | build
	latexmk $(TEXOPTS) $(TARGET).tex

preview: ${TEXHEADER} $(TARGET).tex | build
	latexmk $(TEXOPTS) -pvc $(TARGET).tex


build:
	mkdir -p build

clean:
	rm -rf build
