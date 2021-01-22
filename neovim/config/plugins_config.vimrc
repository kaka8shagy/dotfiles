colorscheme gruvbox

" fzf mapping to Ctrl-p like
" Ctrl-p plugin
noremap <C-p> :Files<CR>
map <leader>b :Buffers<CR>
map <leader>l :BLines<CR>
nnoremap <leader>g :Rg<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>m :Marks<CR>

" lightline config
set showtabline=2 " always show tabline

let g:lightline#bufferline#show_number  = 1
let g:lightline#bufferline#shorten_path = 0
let g:lightline#bufferline#unnamed      = '[No Name]'

let g:lightline#bufferline#filename_modifier = ':t' " only show filename

let g:lightline                  = {}
let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}
