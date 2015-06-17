set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set guioptions-=T
set showtabline=2
set guitablabel=%t

set cc=120

set mouse=a

syntax on
colorscheme desert

set nu
set cul
set ruler

set nobackup
set nowritebackup
set noswapfile

set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936

set tabstop=4
set softtabstop=4
set smarttab
set shiftwidth=4
set expandtab
set ai
set si

set guifont=Consolas:h10

filetype plugin indent on 
filetype plugin on

map <F12> :NERDTreeToggle<cr>
map <F11> :TagbarToggle<cr>
let NERDTreeMouseMode=2

map <F9> :!start svn ci -m "update % " %<cr>
map <F5> :!start svn up <cr>
map <F11> :%!python -m json.tool<cr>
nmap <tab> v>
nmap <s-tab> v<
vmap <tab> >gv
vmap <s-tab> <gv

