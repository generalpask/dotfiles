call plug#begin('~/.config/nvim/autoload/plugged')
    
    " Utility
    Plug 'mbbill/undotree'
    Plug 'lervag/vimtex'
    Plug 'tpope/vim-commentary'
    Plug 'fehawen/sl.vim'
    
    " Fuzzy finding and completion
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    
    " Syntax
    Plug 'yuezk/vim-js'
    Plug 'maxmellon/vim-jsx-pretty'
    
    " Themes 
    Plug 'morhetz/gruvbox'
    Plug 'xero/sourcerer.vim'
    Plug 'altercation/vim-colors-solarized'

call plug#end()
