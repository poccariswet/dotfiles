GO_HOME ?= $(HOME)/go
RUST_HOME ?= $(HOME)/rust

.PHONY: install
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

.PHONY: go
go:
	mkdir -p $(HOME)/go
	brew install go

.PHONY: rust
rust:
	mkdir -p $(HOME)/rust
	curl https://sh.rustup.rs -sSf | sh
	rustup toolchain add nightly
	cargo +nightly install racer
	rustup component add rust-src
	rustup component add rustfmt
	rustup component add rustfmt --toolchain nightly
	clear
	rustc --print sysroot
