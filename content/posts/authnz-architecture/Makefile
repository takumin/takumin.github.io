NAME := README

SRCS := $(NAME).md $(shell find imgs -type f -name '*.png')

.PHONY: all
all: pdf

.PHONY: pdf
pdf: $(NAME).pdf
$(NAME).pdf: $(SRCS)
	marp --pdf --allow-local-files $(NAME).md

.PHONY: server
server:
	marp -s .

.PHONY: clean
clean:
	rm -f $(NAME).pdf
