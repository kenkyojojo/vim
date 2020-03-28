"--------------
" Plugins
"--------------
call plug#begin('~/.vim/plugged')
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'scrooloose/nerdtree'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'mattn/emmet-vim'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-repeat'
  Plug 'terryma/vim-multiple-cursors'

  " for general purpose development
  Plug 'tomtom/tcomment_vim'
  Plug 'MarcWeber/vim-addon-mw-utils'
  Plug 'tomtom/tlib_vim'
  Plug 'garbas/vim-snipmate'
  Plug 'honza/vim-snippets'
  Plug 'majutsushi/tagbar'
  Plug 'mileszs/ack.vim'
  Plug 'airblade/vim-gitgutter'

  " for ruby/rails development
  Plug 'vim-ruby/vim-ruby'
  Plug 'tpope/vim-rails'
  Plug 'thoughtbot/vim-rspec'
call plug#end()

"--------------
" Settings
"--------------
set nocompatible
set clipboard=unnamed
set noswapfile
set hidden
set nobomb            " no BOM(Byte Order Mark)
" search down into sufolders
" Provides tab-completion for all file-related tasks
set path+=**

"--------------
" Filetype and Encoding
"--------------
filetype on
filetype indent on
filetype plugin on

" file encoding
set fileencodings=utf-8,big5
set encoding=utf-8
scriptencoding utf-8

"--------------
" key mapping
"--------------
let mapleader = ","
" use crtl+u ctrl+b to change coding format
set <C-u>=^U
set <C-I>=^I
map <C-u> :set fileencoding=utf8
map <C-i> :set fileencoding=big5
