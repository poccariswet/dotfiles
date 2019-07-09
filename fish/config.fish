set -x LANG 'en_US.UTF-8'
set -x LANGUAGE 'en'
set -x EDITOR nvim
set -x key value
set -e key

# color setting--------------------------------------------------
set -x LSCOLORS Gxfxcxdxbxegedabagacad
#path------------------------------------------------------------
set -x PATH "/usr/local/bin" $PATH
# golang
set -x GOPATH ~/go
set -x PATH $GOPATH/bin $PATH

# rust
set -x PATH $HOME/.cargo/bin $PATH

# python
set -x PATH $HOME/.pyenv/shims $PATH
pyenv init - | source

#node
set -x NODE_PATH /usr/local/lib/node_modules

set -x NVM_DIR HOME/.nvm

#yarn
set -x PATH $HOME/.yarn/bin $PATH

#alias-----------------------------------------------------------
alias .. "cd .."
alias ... "cd ../.."
alias vim "nvim"
alias sof 'source ~/.config/fish/config.fish'
alias fishrc 'nvim ~/.config/fish/config.fish'
alias vimrc 'nvim ~/.config/nvim/init.vim'
alias dein 'nvim ~/.config/nvim/dein.toml'
alias la 'ls -a'
alias ll 'ls -l'
