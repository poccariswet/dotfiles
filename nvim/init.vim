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

autocmd VimEnter * if @% == '' && s:GetBufByte() == 0 | call Term()
function! s:GetBufByte()
  let byte = line2byte(line('$') + 1)
  if byte == -1
    return 0
  else
    return byte - 1
  endif
endfunction

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
Plug 'wavded/vim-stylus'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  let g:deoplete#enable_at_startup = 1
  Plug 'zchee/deoplete-go', { 'tag': '*' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

call plug#end()

" syntax highlight
syntax enable
colorscheme molokai
