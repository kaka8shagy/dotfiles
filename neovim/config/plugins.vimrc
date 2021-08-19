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

" For commenting code
Plug 'tpope/vim-commentary'


Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
"Plug 'tpope/vim-speeddating'
"Plug 'glts/vim-magnum'
"Plug 'glts/vim-radical'
"Plug 'tpope/vim-unimpaired'

" configure prettier
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" add limelight
Plug 'junegunn/limelight.vim'

" add treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-treesitter/playground'

" telescope requirements...
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'scalameta/coc-metals', {'do': 'yarn install --frozen-lockfile'}

" Debugger Plugins
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'

" code folding plugin
Plug 'pseewald/vim-anyfold'

source $HOME/.config/nvim/config/bufonly.vimrc
