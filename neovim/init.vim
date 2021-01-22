set exrc

" include all sets
source $HOME/.config/nvim/config/sets.vimrc

" include all key mappings
source $HOME/.config/nvim/config/remaps.vimrc

" include editor related config
source $HOME/.config/nvim/config/editor.vimrc

" include git mapping
source $HOME/.config/nvim/config/git.vimrc

call plug#begin('~/.config/nvim/plugged')
source $HOME/.config/nvim/config/plugins.vimrc
call plug#end()

" include plugin config
source $HOME/.config/nvim/config/plugins_config.vimrc
