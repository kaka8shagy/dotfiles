" greatest remap ever
vnoremap <leader>p "_dP

" next greatest remap ever : asbjornHaland
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

" map arrow keys to switch buffers
map <Left> :bprev<CR>
map <Right> :bnext<CR>

" save file on pressing Ctrl-s
nnoremap <C-s> :update<CR>

" show undotree
nnoremap <F5> :UndotreeToggle<CR>

" Ctrl + <directions> for switching windows
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k

" remap jj to switch to normal mode
imap jj <Esc>
imap jk <Esc>
imap kj <Esc>
vmap jj <Esc>
vmap jk <Esc>
vmap kj <Esc>

