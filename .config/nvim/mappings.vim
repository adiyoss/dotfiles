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
"autocmd BufWritePre *.py execute ':Black'
