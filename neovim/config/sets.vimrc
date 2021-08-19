set encoding=utf-8
set guicursor=
set nohlsearch " disable search text highlight after enter
set hidden " allow switching between buffers without saving
set noerrorbells " no sounds inside vim
set tabstop=2 softtabstop=2 " use spaces for tab
set shiftwidth=2 " shift by 2 spaces for tab
set expandtab " convert tab to spaces
set smartindent " indent smartly
set number " show line numbers
set relativenumber " show line numbers relative to the line under cursor
set autoread " automatically re-read unmodified files inside vim
set nowrap " do not wrap line
set noswapfile " do not create a swap file
set nobackup
set undodir=~/.config/vim/undodir
set undofile
set ignorecase " ignore case while searching
set smartcase " if uppercase is included do case sensitive search
set incsearch " incremental search
set termguicolors
set scrolloff=8
set noshowmode
set signcolumn=yes
set isfname+=@-@
set confirm " display confirmation message before closing unsaved file
set cmdheight=2 " Give more space for displaying messages.

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

set colorcolumn=80

set cursorline
hi CursorLine term=bold cterm=bold

set foldmethod=indent
