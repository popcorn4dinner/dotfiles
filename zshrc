#!/bin/zsh

# set dotfiles variables
source $HOME/.dotfiles

# aliases
source $HOME/.aliases

#export username available
source $HOME/.username

# pleaseing homebrew
export PATH="/usr/local/sbin:$PATH"

# Activate z
source "$(brew --prefix)/etc/profile.d/z.sh"

# custom plugins
source "$DOTFILES_PATH/zsh_plugins/warhol/warhol.plugin.zsh"
source "$DOTFILES_PATH/zsh_plugins/zsh-iterm-touchbar/zsh-iterm-touchbar.plugin.zsh"

#customize prompt
source "$DOTFILES_PATH/prompt"

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
    source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi


# make composer bineries available PATH
export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH="$HOME/.gem:$PATH"
export PATH="$DOTFILES_PATH/functions:$PATH"

# disable annoying autocorrections
unsetopt correct_all

# KEY BINDINGS 
zmodload zsh/terminfo

zle -N history-substring-search-up
bindkey "$terminfo[kcuu1]" history-substring-search-up

zle -N history-substring-search-down
bindkey "$terminfo[kcud1]" history-substring-search-down


eval $(thefuck --alias)

# local overrides:

[[ -f ~/.aliases.local ]] && source ~/.aliases.local
[[ -f ~/.zshrc.local ]] && source ~/.aliases.local
[[ -d ~/.functions.local ]] && export PATH="$HOME/.functions.local:$PATH"
