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
