# set dotfiles variables
source $HOME/.dotfiles

# aliases
source $HOME/.aliases

#export username available
source $HOME/.username

# pleaseing homebrew
export PATH="/usr/local/sbin:$PATH"

# make composer bineries available PATH
export PATH="$PATH:$HOME/.composer/vendor/bin"

# make gems available
export PATH="$HOME/.gem:$PATH"

# custom scripts within dotfiles
export PATH="$DOTFILES_PATH/functions:$PATH"

# local overrides:

[[ -f ~/.aliases.local ]] && source ~/.aliases.local
[[ -f ~/.zshrc.local ]] && source ~/.aliases.local
[[ -d ~/.functions.local ]] && export PATH="$HOME/.functions.local:$PATH"
