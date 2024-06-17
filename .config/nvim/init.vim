call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'airblade/vim-gitgutter'
Plug 'liuchengxu/vim-which-key'
" Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ghifarit53/tokyonight-vim'
call plug#end()

source $HOME/.config/nvim/mappings.vim
source $HOME/.config/nvim/setting.vim

source $HOME/.config/nvim/coc.vim
" source $HOME/.config/nvim/vim-airline.vim
source $HOME/.config/nvim/nerd-commenter.vim
source $HOME/.config/nvim/fzf.vim
source $HOME/.config/nvim/which-key.vim
source $HOME/.config/nvim/tokyonight.vim
source $HOME/.config/nvim/nerd-tree.vim

let g:mapleader = '\'
let g:maplocalleader = ','

" Pane moving
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" turn off search highlighting
nmap <leader><cr> :noh<CR>
" insert break point
nmap <leader>bp oimport ipdb; ipdb.set_trace()<esc>

:nmap <End> g$
:nmap <Home> g0

" My aliases
nmap <space> /
nmap <leader>q :q <cr>
nmap <leader>w :w <cr>
vmap <leader>y "*y

" Black
nmap <leader>bb :Black <cr>
