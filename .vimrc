" load plugins
execute pathogen#infect()
call pathogen#helptags()
syntax on

set nocompatible              " be iMproved, required
filetype off                  " required

filetype plugin indent on    " required

" Settings
"
set noerrorbells                " No beeps
set number                      " Show line numbers
set backspace=indent,eol,start  " Makes backspace key more powerful.
set showcmd                     " Show me what I'm typing
set showmode                    " Show current mode.

set noshowmode                  " We show the mode with airline or lightline
set autoindent

set splitright
set splitbelow

set incsearch
set hlsearch

set ruler                       " Show the cursor position all the time

set showmatch

set nobackup
set noswapfile

set encoding=utf-8

set clipboard=unnamed

set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized

let mapleader = ","
let g:mapleader = ","

" ------------------ "
" File Type settings "
" ------------------ "

au BufNewFile,BufRead *.vim setlocal noet ts=4 sw=4 sts=4
au BufNewFile,BufRead *.md setlocal spell noet ts=4 sw=4
au BufNewFile,BufRead *.yml,*.yaml setlocal expandtab ts=2 sw=2
au BufNewFile,BufReadPost *.md set filetype=markdown

" python indent
autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=80 smarttab expandtab
" hashicorp hcl indent
autocmd BufNewFile,BufRead *.tf,*.tfvars setlocal tabstop=2 softtabstop=2 shiftwidth=2 textwidth=80 smarttab expandtab

"==================== NerdTree ====================
"" For toggling
nmap <C-n> :NERDTreeToggle<CR>
noremap <Leader>n :NERDTreeToggle<cr>
noremap <Leader>f :NERDTreeFind<cr>

let NERDTreeShowHidden=1

let NERDTreeIgnore=['\.vim$', '\~$', '\.git$', '.DS_Store']

" Close nerdtree and vim on close file
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&  b:NERDTreeType == "primary") | q | endif

" =================== vim-airline ========================

set laststatus=2

let g:airline_theme='dark'
let g:airline_powerline_fonts=1

" set to use powerline fonts when not in a ssh session
let g:remoteSession = ($STY == "")
if !g:remoteSession
	let g:airline_powerline_fonts=1
endif
