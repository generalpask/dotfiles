call plug#begin('~/.config/nvim/autoload/plugged')
    
    " Utility
    Plug 'mbbill/undotree'
    
    " Fuzzy finding and completion
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    
    " Syntax
    Plug 'yuezk/vim-js'
    Plug 'maxmellon/vim-jsx-pretty'
    
    " Themes 
    Plug 'morhetz/gruvbox'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

call plug#end()
