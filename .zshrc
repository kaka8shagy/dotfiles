# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# profiling helpers
zmodload zsh/zprof # use zprof in terminal to check performance

# use timezsh to do multiple runs and get numbers for zsh load time
timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}

# autoupdate oh-my-zsh
zstyle ':omz:update' mode auto

# tmux config
ZSH_TMUX_DEFAULT_SESSION_NAME='workdev'
ZSH_TMUX_AUTOSTART=true

# nvm config
export NVM_LAZY_LOAD=true
export NVM_NO_USE=true
export NVM_AUTO_USE=true
export NVM_COMPLETION=true

# load zgen
source "${HOME}/.zgen/zgen.zsh"

# if the init script doesn't exist
if ! zgen saved; then

  # specify plugins here
  zgen oh-my-zsh

  # oh-my-zsh plugins
  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/tmux
  zgen oh-my-zsh plugins/tmuxinator

  # programming language aliases
  zgen oh-my-zsh plugins/rust
  # zgen oh-my-zsh plugins/rails
  zgen oh-my-zsh plugins/yarn

  # nvm
  zgen load lukechilds/zsh-nvm

  # cache the output of binary initialization command
  zgen load mroth/evalcache

  # double press Esc to put sudo infront of the last command
  zgen oh-my-zsh plugins/sudo

  # provides info about packages
  zgen oh-my-zsh plugins/command-not-found

  # oh-my-zsh themes
  zgen oh-my-zsh themes/ys

  # generate the init script from plugins above
  zgen save
fi

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# vim
alias vim='nvim'
export editor=nvim

# Add RVM to PATH for scripting.
# Make sure this is the last PATH variable change.
if [ -e $HOME/.rvm/bin ]
then
  export PATH="$PATH:$HOME/.rvm/bin"
else
  echo 'rvm is not installed'
fi

# rust
if [ -e $HOME/.cargo/env ]
then
  . "$HOME/.cargo/env"
else
  echo 'rust is not installed'
fi

# code specific to work
if [ -e $HOME/.work.sh ]
then
  source $HOME/.work.sh
else
  echo 'no work.sh found'
fi

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# added by Snowflake SnowSQL installer v1.2
export PATH=/Applications/SnowSQL.app/Contents/MacOS:$PATH
