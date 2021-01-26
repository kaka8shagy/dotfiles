let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_invert_selection = '0'
colorscheme gruvbox
set background=dark

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


" undotree config
nnoremap <leader>u :UndotreeShow<CR>


" lsp config
set completeopt=menuone,noinsert,noselect

nnoremap <leader>vd :lua vim.lsp.buf.definition()<CR>
nnoremap <leader>vi :lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>vsh :lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>vrr :lua vim.lsp.buf.references()<CR>
nnoremap <leader>vrn :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>vh :lua vim.lsp.buf.hover()<CR>
nnoremap <leader>vca :lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>vsd :lua vim.lsp.diagnostic.show_line_diagnostics(); vim.lsp.diagnostic.show_line_diagnostics()<CR>

let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

lua require'lspconfig'.tsserver.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.pyls.setup{ on_attach=require'completion'.on_attach }
