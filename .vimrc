set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'klen/python-mode'
Plugin 'easymotion/vim-easymotion'
Plugin 'godlygeek/tabular'
Plugin 'nvie/vim-flake8'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'davidhalter/jedi-vim'
Plugin 'flazz/vim-colorschemes'
call vundle#end()
filetype plugin indent on

let python_highlight_all=1
syntax on
colorscheme Tomorrow-Night-Eighties

set guifont=Monaco:h18
set laststatus=2
set number
set cursorline
set incsearch                       " search as characters are entered
set hlsearch                        " highlight matches
set showmatch                       " highlight matching [{()}]
set wildmenu                        " visual autocomplete for command menu
set expandtab                       " tabs are spaces
set tabstop=4                       " number of visual spaces per TAB
set softtabstop=4                   " number of spaces in tab when editing
let mapleader = ","
set lazyredraw
set backspace=indent,eol,start

" Enable folding
set foldmethod=indent
set foldlevel=99
set encoding=utf-8

" KEY MAPPIN
nmap <down> ddp " moving around lines
nmap <up> ddkP
nmap <C-O> O<Esc> " inserting enter in normal mode
nmap <leader>t :NERDTreeToggle<cr>
nmap <leader>tt :NERDTreeFind<CR>
nmap <leader>rr :source ~/.vimrc<cr>
nmap <leader>qq :q!<cr>
nmap <leader>wq :wq<cr>
map <leader> <Plug>(easymotion-prefix) " ctrl-w
nmap <leader>vimrc :tabe ~/.vimrc<cr> " shortcut to opening the vimrc
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding with the spacebar
nnoremap <space> za

" insert break points in python files
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>
map <Leader>d :!python
