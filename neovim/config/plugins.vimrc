" colorschemes
Plug 'morhetz/gruvbox'
Plug 'flazz/vim-colorschemes'
Plug 'rafi/awesome-vim-colorschemes'


" a game to get better at vim
Plug 'ThePrimeagen/vim-be-good'


" Show git diff integrationa and add/remove highlight
Plug 'airblade/vim-gitgutter'
" Git plugin for vim to help in some git commands.
" Mainly using this to help lightline with git
Plug 'tpope/vim-fugitive'


" Plugin to run test from within vim
Plug 'janko/vim-test'


" Plugin outside ~/.config/nvim/plugged with post-update hook
" Fuzzy search plugin fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'


Plug 'itchyny/lightline.vim' " Plugin for status line
Plug 'mengelbrecht/lightline-bufferline' " Plugin to display open buffers


" see contents of register
Plug 'junegunn/vim-peekaboo'

" see the whole undo history visually
Plug 'mbbill/undotree'

" lsp config
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'tjdevries/lsp_extensions.nvim'

source $HOME/.config/nvim/config/bufonly.vimrc
