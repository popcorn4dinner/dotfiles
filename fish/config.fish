status --is-interactive; and source (rbenv init -|psub)
status --is-interactive; and source (nodenv init -|psub)

direnv hook fish | source

starship init fish | source

# use nvim to duisplay manpages
set -x MANPAGER "nvim -c 'set ft=man' -"

# Docker build kit
export COMPOSE_DOCKER_CLI_BUILD=1
export DOCKER_BUILDKIT=1

# set dotfiles variables
source $HOME/.dotfiles

# aliases
source $DOTFILES_PATH/fish/aliases.fish

#export username available
source $HOME/.username

# make gems available
export PATH="$HOME/.gem:$PATH"

# custom scripts within dotfiles
export PATH="$DOTFILES_PATH/functions:$PATH"
