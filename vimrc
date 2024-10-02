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

 " revers line number 
  Plug 'jeffkreeftmeijer/vim-numbertoggle'

 " sdcv to search word in dictionaries
  Plug 'chusiang/vim-sdcv'

 " vimwiki
  Plug 'vimwiki/vimwiki'
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
set number relativenumber
" User K to search English Dictionary
set keywordprg=sdcv
syntax on

"--------------
" Filetype and Encoding
"--------------
filetype on
filetype indent on " 自適應不同語言的智能縮進
filetype plugin on " 開啟文件名探測縮進

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
" use List trangs
nmap  ;l   :call ListTrans_toggle_format()<CR>             
xmap  ;l   :call ListTrans_toggle_format('visual')<CR>  
" use vmath
xmap <silent><expr>  ++  VMATH_YankAndAnalyse() 
nmap <silent>        ++  vip++
" sdcv 
nmap <leader>w :call SearchWord()<CR>
" vimwikicheckbox
map <Leader>bb <Plug>VimwikiToggleListItem
" Vim global plugin for dragging virtual blocks
vmap  <expr>  <LEFT>   DVB_Drag('left')
vmap  <expr>  <RIGHT>  DVB_Drag('right')
vmap  <expr>  <DOWN>   DVB_Drag('down')
vmap  <expr>  <UP>     DVB_Drag('up')
vmap  <expr>  D        DVB_Duplicate()

let g:DVB_TrimWS = 1  

"--------------
" Function to flash the current match a number of times
"--------------
function! HLNext (blink)
    let [bufnum, lnum, col, off] = getpos('.')
    let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
    let target_pat = '\c\%#\%('.@/.'\)'
    let i = 1
    while i < a:blink
        exec 'sleep 50m'
        let ring = matchadd('Comment', target_pat, 101)
        redraw
        exec 'sleep 50m'
        call matchdelete(ring)
        redraw
        let i += 1
    endwhile
endfunction

" Rewire n and N to step-and-call-function
nnoremap <silent> n   n:call HLNext(5)<cr>
nnoremap <silent> N   N:call HLNext(5)<cr>
" Use <C-L> to clear some highlighting
nnoremap <silent> <C-L> :silent! call matchdelete(b:ring)<CR>:nohlsearch<CR>:set nolist nospell<CR><C-L>


"--------------
" 按 F5 執行當前 Python 程式碼"
"--------------
map <F5> :call PRUN()<CR>
func! PRUN()
    exec "w"
    if &filetype == 'python'
        exec "!clear %"
        exec "!python3 %"
    endif
    if &filetype == 'ruby'
        exec "!clear %"
        exec "!ruby %"
    endif
endfunc
