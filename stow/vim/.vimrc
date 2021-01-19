set shiftwidth=2
set softtabstop=2
set tabstop=2
set statusline=%#warningmsg#%*
set window=45
set expandtab

set number
set nocompatible
syntax on
filetype off

let mapleader = ","

set backupdir=~/.vim/backup
set directory=~/.vim/swap

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'airblade/vim-gitgutter'
Plug 'avakhov/vim-yaml'
Plug 'b4b4r07/vim-hcl'
Plug 'cappyzawa/fly-lint.vim'
Plug 'edkolev/promptline.vim'
Plug 'ekalinin/dockerfile.vim'
Plug 'elzr/vim-json'
Plug 'fatih/vim-go'
Plug 'hashivim/vim-terraform'
Plug 'leafgarland/typescript-vim'
Plug 'lifepillar/pgsql.vim'
Plug 'neomake/neomake'
Plug 'ngmy/vim-rubocop'
Plug 'ntpeters/vim-better-whitespace'
Plug 'pangloss/vim-javascript'
Plug 'peitalin/vim-jsx-typescript'
Plug 'plasticboy/vim-markdown'
Plug 'prettier/prettier'
Plug 'prettier/vim-prettier'
Plug 'scrooloose/nerdtree'
Plug 'Shougo/deoplete.nvim'
Plug 'sotte/presenting.vim'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'VundleVim/Vundle.vim'
Plug 'w0rp/ale'
Plug 'yorickpeterse/happy_hacking.vim'
call plug#end()

let @a = '0yyp0gu$0:.s/ /./e0:.s/ \+//geI<A@digital.cabinet-office.gov.uk>kJICo-authored-by: 07wdt<i 0:.s/ \+/ /ge:noh06wvU0k'

let g:ale_linters = {
\   'java': [],
\   'typescript': ['tsserver', 'typecheck', 'tslint'],
\}

let g:ale_fixers = {
\   'coffeescript': ['coffeelint'],
\   'javascript': ['eslint'],
\   'typescript': ['tslint', 'trim_whitespace'],
\   'json': ['jsonlint'],
\   'ruby': ['rubocop'],
\   'shell': ['shellcheck'],
\}
let g:ale_fix_on_save = 0

let g:ale_sign_column_always = 1

let g:ale_sign_error = '🔥'
let g:ale_sign_warning = '⚠️'

let g:terraform_align=1

set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'unicode'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
" set term=xterm-256color
set termencoding=utf-8

set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set iskeyword-=_

set colorcolumn=120
highlight ColorColumn ctermbg=5

let g:NERDCommentEmptyLines = 1
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

map gd :GoDef
map tff :TerraformFmt

color happy_hacking
