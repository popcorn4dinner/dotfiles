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

fish_add_path /opt/homebrew/opt/openjdk/bin

# pnpm
set -gx PNPM_HOME /Users/bastian/Library/pnpm
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
#

export PATH="/Users/bastian/.qover/cli/bin:$PATH"
export QOVER_WORKSPACE_ROOT="/Users/bastian/code/qover_root/"

export BRAINBIRDS_STRAPI_API_TOKEN="98638b8208a35a173877e145691e6030ea259089a5a4dff610a010f0d1ad81a1fc3dff7f0743483f920a34f956b0ea9ccddb5cf8c6db4ae2d43c2a46b14904046188bc64acd6b7890db8f39ef36421bc8ec7ba46cf617efe66f244264903fd1b013b135c638247bc2fc328b072f1c469fc03fd2ff6c5dbec74e59a8b2f270d7c"
