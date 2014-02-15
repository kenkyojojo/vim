syntax on
filetype on
set hlsearch
set number
set cindent
set autoindent
set wildmenu
set cursorline 
set cursorcolumn
set tabstop=4
set shiftwidth=4
set fdm=marker
set keywordprg=sdcv
map <f9> :Tlist<CR>


highlight Search term=reverse ctermbg=4 ctermfg=7
highlight Normal ctermbg=black ctermfg=white
highlight Folded ctermbg=black ctermfg=darkcyan
hi Comment ctermbg=black ctermfg=darkcyan


if has("autocmd")
    autocmd BufRead *.txt set tw=78
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal g'\"" |
    \ endif
endif
