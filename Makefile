.PHONY: dotfiles

all: dotfiles

dotfiles:
	# add aliases for dotfiles

	for file in $(shell find $(CURDIR) -maxdepth 1 -name ".*" -not -name ".git" -not -name ".gitmodules" -not -name ".*.swp"); do \
		f=$$(basename $$file); \
		ln -sfn $$file $(HOME)/$$f; \
	done;
