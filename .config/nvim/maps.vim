let mapleader = " "
imap <C-Space> <Esc>
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>h :wincmd h<cr>
nnoremap <leader>j :wincmd j<cr>
nnoremap <leader>k :wincmd k<cr>
nnoremap <leader>l :wincmd l<cr>
nnoremap <leader>u :UndotreeToggle<cr>
nnoremap <C-n> :NERDTreeToggle<cr>
nnoremap <C-j> :GFiles<CR>
nnoremap <C-k> :GFiles?<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<cr>

nnoremap <leader>gd <Plug>(coc-definition)
nnoremap <leader>gr <Plug>(coc-references)
