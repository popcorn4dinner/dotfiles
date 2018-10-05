#!/bin/zsh

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

# disable annoying autocorrections
unsetopt correct_all
unsetopt nomatch

# KEY BINDINGS 
zmodload zsh/terminfo

zle -N history-substring-search-up
bindkey "$terminfo[kcuu1]" history-substring-search-up

zle -N history-substring-search-down
bindkey "$terminfo[kcud1]" history-substring-search-down


eval $(thefuck --alias)

