" colorschemes
Plug 'morhetz/gruvbox'
Plug 'flazz/vim-colorschemes'
Plug 'rafi/awesome-vim-colorschemes'

colorscheme gruvbox

" Plugin outside ~/.config/nvim/plugged with post-update hook
" Fuzzy search plugin fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" fzf mapping to Ctrl-p like
" Ctrl-p plugin
noremap <C-p> :Files<CR>
map <leader>b :Buffers<CR>
map <leader>l :BLines<CR>
nnoremap <leader>g :Rg<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>m :Marks<CR>

" Status line plugin
Plug 'itchyny/lightline.vim'
