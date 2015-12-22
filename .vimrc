execute pathogen#infect()
syntax on
filetype plugin indent on

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

set tabstop=2 shiftwidth=2 expandtab
autocmd Filetype php set tabstop=4 shiftwidth=4 expandtab
autocmd BufEnter *.blade.php set tabstop=2 shiftwidth=2 expandtab smarttab

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Command remove trailing whitespace
nmap :rs :%s/\s\+$//

" Remove trailing whitespaces on saving
autocmd BufWritePre * :%s/\s\+$//e

set number

highlight CursorColumn ctermfg=cyan ctermbg=cyan
set cursorcolumn
set cursorline

" Folding
set foldmethod=indent
set nofoldenable
map fs za
map fS zA
map fo zr
map fO zR
map fj zm
map fJ zM

" Switch window with <C-j>, <C-k>
nore <silent> <C-K> :wincmd k<CR>
nore <silent> <C-J> :wincmd j<CR>
nore <silent> <C-H> :wincmd h<CR>
nore <silent> <C-L> :wincmd l<CR>

" ; instead of :
nore ; :
" \ instead of ;
nore \ ;
" jk instead of <Esc>
inore jk <Esc>

" MRU
nmap :mru :MRU
