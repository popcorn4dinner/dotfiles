eval (/opt/homebrew/bin/brew shellenv)

status --is-interactive; and source (rbenv init -|psub)
status --is-interactive; and source (nodenv init -|psub)

direnv hook fish | source
set -g direnv_fish_mode eval_on_arrow

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

#composer executables
export PATH="$HOME/.composer/vendor/bin:$PATH"

if test -d ~/.functions.local
    export PATH="$HOME/.functions.local:$PATH"
end

if test -e ~/.local.env
    source $HOME/.local.env
end

ssh-add --apple-use-keychain >/dev/null

source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc"

export TERM=xterm-256color
