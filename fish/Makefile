CONFIG_HOME ?= $(HOME)/.config

.PHONY: install
install:
	mkdir -p $(CONFIG_HOME)/fish
	mkdir -p $(CONFIG_HOME)/fish/functions
	cp $(CURDIR)/config.fish $(CONFIG_HOME)/fish
	cp $(CURDIR)/fish_prompt.fish $(CONFIG_HOME)/fish/functions

.PHONY: rust
rust:
	curl https://sh.rustup.rs -sSf | sh
	rustup toolchain add nightly
	cargo +nightly install racer
	rustup component add rust-src
	rustup component add rustfmt
	rustup component add rustfmt --toolchain nightly
	clear
	rustc --print sysroot
