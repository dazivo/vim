" Pathogen init -------------------- {{{ 
execute pathogen#infect()
syntax on
filetype plugin indent on
" }}}

" Global settings  -------------------- {{{ 
colorscheme evening
set colorcolumn=80
set laststatus=2
set nocompatible     
set nu
set numberwidth=1
set statusline=
set statusline+=%-10.3n\
set statusline+=%f\
set statusline+=%h%m%r%w
set tabstop=4
set shiftwidth=4
set expandtab
" }}}

" Useful Mappings -------------------- {{{ 
inoremap <C-R><C-B> <C-R>=expand('#:p')<Left><Left><Left><Left>
inoremap <C-u> <ESC>muBgUiw`ua
inoremap <C-p><C-p> <space>%>%<space>
inoremap <C-n><C-n> <space><-<space>
inoremap (( ()<Left>
inoremap {{ {}<Left>
inoremap [[ []<Left>

nmap <C-H> <C-W>h
nmap <C-J> <C-W>j<C-W>_
nmap <C-K> <C-W>k<C-W>_
nmap <C-L> <C-W>l
nmap <space><space> viw
nmap G Gzz
nmap cc cc<ESC> 
nmap g<C-O> o<ESC>k
nmap gO O<ESC>j
nmap { {zz
nmap } }zz
" }}}

" The leader shortcuts -------------------- {{{
let mapleader=','
nmap <leader>N :NERDTree<CR>
nnoremap <leader>= <C-W>=
nnoremap <leader>ev :split $MYVIMRC<CR><C-W>_
nnoremap <leader>qq :q<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>ww :w<CR>
nnoremap <leader>k i<<>>=<CR>@<ESC><Up><Right><Right>i
vnoremap <leader>so :sort<CR>
" }}}

" Operator mappings -------------------- {{{
onoremap inb :<C-u>execute "normal! /(\r:nohlsearch\rvib"<CR>
onoremap inB :<C-u>execute "normal! /{\r:nohlsearch\rviB"<CR>
onoremap in[ :<C-u>execute "normal! /[\r:nohlsearch\rvi["<CR>
" }}}

" Vimscript file settings -------------------- {{{
augroup filetime_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
