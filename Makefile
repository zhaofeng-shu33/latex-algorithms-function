BUILD_DIR = ./build

.PHONY: all

all: $(BUILD_DIR)/algorithms.pdf

$(BUILD_DIR)/algorithms.pdf: algorithms.dtx
	mkdir -p $(BUILD_DIR)
	rm -r /usr/local/texlive/texmf-dist/tex/latex/algorithms
	pdflatex -output-directory=$(BUILD_DIR) algorithms.dtx

algorithms.dtx: algorithms/algorithms.dtx
	cp algorithms/algorithms.dtx ./
