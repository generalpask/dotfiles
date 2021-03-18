let mapleader = " "
imap <C-Space> <Esc>
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

" Fast pane resizing (C-w +/-/>/< and keep tapping/holding to resize)
nmap          <C-W>+     <C-W>+<SID>ws
nmap          <C-W>-     <C-W>-<SID>ws
nn <script>   <SID>ws+   <C-W>+<SID>ws
nn <script>   <SID>ws-   <C-W>-<SID>ws
nmap          <C-W>>     <C-W>><SID>ws
nmap          <C-W><     <C-W><<SID>ws
nn <script>   <SID>ws>   <C-W>><SID>ws
nn <script>   <SID>ws<   <C-W><<SID>ws
nmap          <SID>ws    <Nop>
