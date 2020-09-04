set shiftwidth=2
set softtabstop=2
set tabstop=2
set statusline=%#warningmsg#%*
set window=45
set expandtab

set number

set backupdir=~/.vim/backup
set directory=~/.vim/swap

call plug#begin('~/.vim/plugged')
Plug 'VundleVim/Vundle.vim'
Plug 'Shougo/deoplete.nvim'
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
Plug 'sotte/presenting.vim'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'
call plug#end()

map gd :GoDef
map tff :TerraformFmt

let @a = '0yyp0gu$0:.s/ /./e0:.s/ \+//geI<A@digital.cabinet-office.gov.uk>kJICo-authored-by: 07wdt<i 0:.s/ \+/ /ge:noh06wvU0k'
