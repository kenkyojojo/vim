"--------------
" appearance
"--------------
set number             " show line number
set noshowmode         " disable mode(because of Vim-Airline)
set showcmd            " display command
set nolist             " do not display invisible characters
set wrap              
set linebreak
set cursorline
set ruler
set showtabline=2
set shortmess=I       " remove splash wording

"--------------
" split window
"--------------
set splitbelow
set splitright

"--------------
" Scroll
"--------------
set scrolloff=0

"--------------
" Tab and space
"--------------
set softtabstop=2
set shiftwidth=2
set expandtab

"--------------
" 特殊文件Tab設置
"--------------
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=79
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=79
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=79
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=79
autocmd FileType html,htmldjango,xhtml,haml,jade setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=79

"--------------
" 文件類型設置
"--------------
" Markdown設置
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
" Markdown折行
autocmd FileType markdown setlocal wrap

"--------------
" ColorScheme
"--------------
set t_Co=256  " Number of colors
syntax on

try
  set background=dark
  colorscheme gruvbox
  highlight EndOfBuffer cterm=NONE ctermfg=bg ctermbg=bg
catch
endtry

"--------------
" Sound
"--------------
" disable sound on errors
set visualbell
set noerrorbells
set t_vb=
set tm=500

"--------------
" foldmarker
"--------------
" 預設全部關閉
set foldmarker={{{,}}}
set foldmethod=marker
set foldlevel=0 
