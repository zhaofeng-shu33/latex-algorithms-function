BUILD_DIR = ./build

.PHONY: all

all: $(BUILD_DIR)/algorithms.pdf

$(BUILD_DIR)/algorithms.pdf: algorithms/algorithms.dtx
	mkdir -p $(BUILD_DIR)
	pdflatex -output-directory=$(BUILD_DIR) algorithms/algorithms.dtx