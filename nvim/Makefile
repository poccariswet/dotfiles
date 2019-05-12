CONFIG_HOME ?= $(HOME)/.config

.PHONY: install
install:
	mkdir -p $(CONFIG_HOME)/nvim
	cp $(CURDIR)/init.vim $(CONFIG_HOME)/nvim/init.vim
	pip3 install neovim-remote

