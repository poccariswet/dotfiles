CONFIG_HOME ?= $(HOME)/.config

.PHONY: install
install:
	curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimagechmod u+x nvim.appimage
	./nvim.appimage
	mkdir -p $(CONFIG_HOME)/nvim
	ln -s $(CURDIR)/init.vim $(CONFIG_HOME)/nvim/init.vim
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	pip3 install neovim-remote

