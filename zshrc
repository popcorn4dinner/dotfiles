#!/bin/zsh

#export username available
source $HOME/.username

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
    source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# aliases
source $HOME/.aliases

export DEFAULT_USER=$USERNAME

#rbenv - ruby version manager
eval "$(rbenv init -)"

#pyenv - python version manager
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# make composer bineries available PATH
export PATH="$PATH:$HOME/.composer/vendor/bin"

### KEY BINDINGS ############################################################
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# Have to do this again for tmux
bindkey '^[[B' history-substring-search-down
bindkey '^[[A' history-substring-search-up

eval $(thefuck --alias)

#Syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters

# History search
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh

# Prompt configuration
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\uE0C0'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\uE0C0'
POWERLEVEL9K_MODE='nerdfont-complete'
OWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator virtualenv)
