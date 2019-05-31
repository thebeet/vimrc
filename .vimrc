call plug#begin()

Plug 'terryma/vim-multiple-cursors'
Plug 'vim-syntastic/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/grep.vim'
Plug 'majutsushi/tagbar'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" javascript
"" Javascript Bundle
Plug 'jelera/vim-javascript-syntax'


" php
"" PHP Bundle
Plug 'arnaud-lb/vim-php-namespace'
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}

call plug#end()


set nocompatible
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
behave mswin


set guifont=Courier\ New\ 10
set guioptions-=T
set showtabline=2
set guitablabel=%N\ %f
set mouse=a
syntax on
colorscheme desert
set nu
set cul
set ruler

set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936

set tabstop=4
set softtabstop=4
set smarttab
set shiftwidth=4
set expandtab
set ai
set si

set cc=120

map <F12> :NERDTreeTabsToggle<cr>
map <F11> :TagbarToggle<cr>
let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeMouseMode=2
let NERDTreeIgnore=['\.pyc$', '^node_module',]
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nmap <tab> v>
nmap <s-tab> v<
vmap <tab> >gv
vmap <s-tab> <gv

if has("gui_macvim")
  noremap <C-Tab> :tabnext<CR>
  noremap <C-S-Tab> :tabprev<CR>
endif

set nobackup 
set nowritebackup 
set noswapfile

autocmd BufWritePre *.php :%s/\s\+$//e

set hlsearch

let g:phpactorPhpBin = 'php'
let g:phpactorBranch = 'master'
let g:phpactorOmniAutoClassImport = v:true
" Include use statement
nmap <Leader>u :call phpactor#UseAdd()<CR>
" Invoke the context menu
nmap <Leader>mm :call phpactor#ContextMenu()<CR>
" Invoke the navigation menu
nmap <Leader>nn :call phpactor#Navigate()<CR>
" Goto definition of class or class member under the cursor
nmap <Leader>o :call phpactor#GotoDefinition()<CR>
" Show brief information about the symbol under the cursor
nmap <Leader>K :call phpactor#Hover()<CR>
" Transform the classes in the current file
nmap <Leader>tt :call phpactor#Transform()<CR>
" Generate a new class (replacing the current file)
nmap <Leader>cc :call phpactor#ClassNew()<CR>
" Extract expression (normal mode)
nmap <silent><Leader>ee :call phpactor#ExtractExpression(v:false)<CR>
" Extract expression from selection
vmap <silent><Leader>ee :<C-U>call phpactor#ExtractExpression(v:true)<CR>
" Extract method from selection
vmap <silent><Leader>em :<C-U>call phpactor#ExtractMethod()<CR>

au BufNewFile,BufRead *.mjs set filetype=javascript
