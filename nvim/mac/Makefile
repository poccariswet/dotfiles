CONFIG_HOME ?= $(HOME)/.config

.PHONY: install
install:
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew install neovim
	mkdir -p $(CONFIG_HOME)/nvim
	ln -s $(CURDIR)/init.vim $(CONFIG_HOME)/nvim/init.vim
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	brew install python3
	pip3 install neovim-remote

