CONFIG_HOME ?= $(HOME)/.config

.PHONY: install
install:
	mkdir -p $(CONFIG_HOME)/fish
	mkdir -p $(CONFIG_HOME)/fish/functions
	cp $(CURDIR)/config.fish $(CONFIG_HOME)/fish
	cp $(CURDIR)/fish_prompt.fish $(CONFIG_HOME)/fish/functions

