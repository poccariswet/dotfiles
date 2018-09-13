scriptencoding utf-8

"escape insert mode
inoremap <silent> jj <ESC>
nnoremap <silent> <C-q> :QuickRun<CR>
nnoremap <Leader>t :enew<CR>:call Term()<CR>

"nvim
set t_Co=256
set termguicolors
set number
set backspace=indent,eol,start
set mouse=a
set laststatus=2
set list "Show space char
set listchars=tab:»\ ,trail:-,extends:»,precedes:«,nbsp:% "space 対応
set clipboard=unnamed "clipbordと対応"
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

" Use deoplete.
let g:deoplete#enable_at_startup = 1


" dein settings {{{
" dein自体の自動インストール
let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif
let &runtimepath = s:dein_repo_dir .",". &runtimepath
" プラグイン読み込み＆キャッシュ作成
let s:toml_file = fnamemodify(expand('<sfile>'), ':h').'/dein.toml'
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#load_toml(s:toml_file)
  call dein#end()
  call dein#save_state()
endif
" 不足プラグインの自動インストール
if has('vim_starting') && dein#check_install()
  call dein#install()
endif
"}}}

syntax enable
colorscheme molokai
