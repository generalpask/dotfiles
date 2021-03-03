call plug#begin('~/.config/nvim/autoload/plugged')
    
    " Utility
    Plug 'mbbill/undotree'
    Plug 'preservim/nerdtree'
    Plug 'lervag/vimtex'
    Plug 'tpope/vim-commentary'
    
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
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

call plug#end()
