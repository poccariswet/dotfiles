scriptencoding utf-8

inoremap <silent> jj <ESC>
nnoremap <S-b> <S-i>
nnoremap <Esc><Esc> :nohlsearch<CR><Esc>
tnoremap <silent> jj <C-\><C-n>

set t_Co=256
set termguicolors
set number
set backspace=indent,eol,start
set mouse=a
set laststatus=2
set list "Show space char
set listchars=tab:»\ ,trail:-,extends:»,precedes:«,nbsp:% "space 対応
set clipboard+=unnamed
set ruler "カーソルが何行目の何列目に置かれているかを表示
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

"cursorの形状を変える
if has('vim_starting')
    let &t_SI .= "\e[6 q"
    let &t_EI .= "\e[2 q"
    let &t_SR .= "\e[4 q"
endif

call plug#begin('~/.vim/plugged')

Plug 'tomasr/molokai'
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'cespare/vim-toml'
Plug 'airblade/vim-gitgutter'
Plug 'posva/vim-vue'
Plug 'cohama/lexima.vim'
Plug 'simeji/winresizer'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dag/vim-fish'

call plug#end()

syntax enable
colorscheme molokai
