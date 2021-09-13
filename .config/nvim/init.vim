call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'liuchengxu/vim-which-key'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ghifarit53/tokyonight-vim'
call plug#end()

source $HOME/.config/nvim/mappings.vim
source $HOME/.config/nvim/setting.vim

source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/vim-airline.vim
source $HOME/.config/nvim/nerd-commenter.vim
source $HOME/.config/nvim/fzf.vim
source $HOME/.config/nvim/which-key.vim
source $HOME/.config/nvim/tokyonight.vim
source $HOME/.config/nvim/nerd-tree.vim

