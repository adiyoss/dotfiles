syntax enable                           " Enables syntax highlighing

" coc settings
set hidden                              " Required to keep multiple buffers open multiple buffers
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set cmdheight=2                         " More space for displaying messages
set updatetime=300                      " Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable delays and poor user experience.
set shortmess+=c                        " Don't pass messages to |ins-completion-menu|.
set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time diagnostics appear/become resolved.

set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed 
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=2                        " Always display the status line
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs 
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
