execute pathogen#infect()
syntax on
filetype plugin indent on

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

set tabstop=2 shiftwidth=2 expandtab
autocmd Filetype php setlocal ts=4 sw=4 expandtab

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

set foldmethod=indent
set nofoldenable
map fs za
map fS zA
map fo zr
map fO zR
map fj zm
map fJ zM

