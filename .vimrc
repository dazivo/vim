let mapleader=','
execute pathogen#infect()
syntax on
filetype plugin indent on
set nu
"set spell
set nocompatible              " required
"filetyp off                  " required

iabbr myemail danijel.zivoi@math.ethz.ch

colorscheme koehler

nmap <leader>E i\begin{}<ESC>iequation<ESC>yyplciwend<ESC>O
nmap <leader>e i\begin{}<ESC>iequation*<ESC>yyplciwend<ESC>O
nmap <leader>A i\begin{}<ESC>ialign<ESC>yyplciwend<ESC>O
nmap <leader>a i\begin{}<ESC>ialign*<ESC>yyplciwend<ESC>O
nmap 55 :w<CR>:!pdflatex %<CR>

" frame environment
"nmap <leader>f i\begin{}<ESC>iframe<ESC>yyplciwend<ESC>O

"quick pairs
imap <leader>' ''<ESC>i
imap <leader>2 ""<ESC>i
imap <leader>$ $$<ESC>i
imap <leader>¨ []<ESC>i
imap <leader>9 ()<ESC>i
imap <leader>} {}<ESC>i
imap <leader>a <ESC>A
nnoremap <leader><leader>' <ESC>ea'<ESC>bi'<ESC>ee
nnoremap <leader><leader>" <ESC>ea"<ESC>bi"<ESC>ee
nnoremap <leader><leader>$ <ESC>ea$<ESC>bi$<ESC>ee
nnoremap <leader><leader>) <ESC>ea)<ESC>bi(<ESC>ee
nnoremap <leader><leader>} <ESC>ea}<ESC>bi{<ESC>ee

" (un)commenting in LaTeX
vmap <leader>c :normal i%<CR>
vmap <leader>C :normal x<CR>




map <leader>N :NERDTree<CR>
map <C-H> <C-W>h
map <C-L> <C-W>l
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_



nmap <space> viw
nmap gO O<ESC>j
nmap g<C-O> o<ESC>k
nmap G Gzz
nmap { {zz
nmap } }zz

