" Map F2 to toggle NERDTree
nnoremap <silent> <F2> :NERDTreeToggle<Enter>

" Looks better :)
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize = 25

" Reset root directory when switch dir in NERDTree 
let NERDTreeChDirMode = 2

" Remove NERDTree window if there's no any buffer exists.
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

