set formatoptions-=cro " Stop newline continuation of comments
set t_ut=              " Fix colorschemes inside tmux

syntax enable
set nocompatible
set noerrorbells
set noshowmode
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu rnu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set splitbelow
set splitright

set sessionoptions=blank,buffers,curdir,folds,tabpages

" Automatically save folds
"autocmd BufWinLeave ?* mkview!
"autocmd BufWinEnter ?* silent loadview
