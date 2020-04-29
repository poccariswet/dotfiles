scriptencoding utf-8

" mapping
inoremap <silent> jj <ESC>
nnoremap <S-b> <S-i>
nnoremap <Esc><Esc> :nohlsearch<CR><Esc>
autocmd InsertLeave * set nopaste
tnoremap <C-j> <C-\><C-n>

"nvim standard setting
set t_Co=256
set termguicolors
set number
set backspace=indent,eol,start
set mouse=a
set laststatus=2
set list
set listchars=tab:»\ ,trail:-,extends:»,precedes:«,nbsp:%
set clipboard=unnamed
set ruler
set autoindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set cursorline
set cursorcolumn
set smartindent

"vim-go
let g:go_template_autocreate = 0
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_term_enabled = 1
let g:go_highlight_build_constraints = 1

let g:deoplete#sources#go#align_class = 1
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#package_dot = 1

" airline
let g:airline_theme = 'solarized'
let g:airline_solarized_bg = 'dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1 " display buffer number on tab

"rust fmt auto
let g:rustfmt_autosave = 1
" rust completion
let g:racer_cmd = expand('~/.cargo/bin/racer')
" " show the complete function definition (e.g. its arguments and return type), enable the experimental completer
let g:racer_experimental_completer = 1
" " insert the parenthesis in the completion
let g:racer_insert_paren = 1

let g:deoplete#sources#go#gocode_binary = expand('~/go/bin/gocode')

" plugins
call plug#begin('~/.vim/plugged')

Plug 'tomasr/molokai'
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'cespare/vim-toml'
Plug 'airblade/vim-gitgutter'
Plug 'posva/vim-vue'
Plug 'cohama/lexima.vim'
Plug 'simeji/winresizer'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dag/vim-fish'
Plug 'tpope/vim-fugitive'
Plug 'editorconfig/editorconfig-vim'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

call plug#end()

" syntax highlight
syntax enable
colorscheme molokai
