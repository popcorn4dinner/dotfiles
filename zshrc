#!/bin/zsh

# aliases
source $HOME/.aliases

#export username available
source $HOME/.username

# pleaseing homebrew
export PATH="/usr/local/sbin:$PATH"

# Activate z
source "$(brew --prefix)/etc/profile.d/z.sh"


# Antigen
source $(brew --prefix)/share/antigen/antigen.zsh

antigen bundle unixorn/warhol.plugin.zsh
antigen bundle z

antigen apply

# Prompt configuration
# Font mode for powerlevel9k
POWERLEVEL9K_MODE="nerdfont-complete"

# Separators
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\UE0B8'
# POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=$'\ue231'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR='\UE0BA'
# POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=$'\ue0b7'

# Context
DEFAULT_USER=$USERNAME
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='cyan'
# POWERLEVEL9K_CONTEXT_TEMPLATE="%F{cyan}%n%f"
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='black'

# Dirs
POWERLEVEL9K_DIR_HOME_BACKGROUND='blue'
POWERLEVEL9K_DIR_HOME_FOREGROUND='black'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='blue'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='black'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='yellow'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='black'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

# OS segment
POWERLEVEL9K_OS_ICON_BACKGROUND='black'
POWERLEVEL9K_LINUX_ICON='%F{cyan}\uf300 %F{white}arch%F{cyan}linux%f'

# VCS icons
POWERLEVEL9K_VCS_GIT_ICON=$''
POWERLEVEL9K_VCS_GIT_GITHUB_ICON=$''
POWERLEVEL9K_VCS_STAGED_ICON=$'\uf055'
POWERLEVEL9K_VCS_UNSTAGED_ICON=$'\uf421'
POWERLEVEL9K_VCS_UNTRACKED_ICON=$'\uf00d'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON=$'\uf0ab '
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON=$'\uf0aa '
POWERLEVEL9K_VCS_BRANCH_ICON=$' \uF126 '

# VCS colours
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='yellow'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='black'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='cyan'

# VCS CONFIG
POWERLEVEL9K_SHOW_CHANGESET=false

# Battery
POWERLEVEL9K_BATTERY_LOW_FOREGROUND='red'
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND='yellow'
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='green'
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND='blue'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status_joined context dir vcs user)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()

# Status
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true
POWERLEVEL9K_STATUS_ERROR_BACKGROUND='magenta'
POWERLEVEL9K_STATUS_ERROR_FOREGROUND='black'
POWERLEVEL9K_STATUS_CROSS=true


# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
    source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi


#rbenv - ruby version manager
eval "$(rbenv init -)"

#pyenv - python version manager
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# make composer bineries available PATH
export PATH="$PATH:$HOME/.composer/vendor/bin"

#KEY BINDINGS 
zmodload zsh/terminfo

zle -N history-substring-search-up
bindkey "$terminfo[kcuu1]" history-substring-search-up

zle -N history-substring-search-down
bindkey "$terminfo[kcud1]" history-substring-search-down


eval $(thefuck --alias)

#Syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/usr/local/share/zsh-syntax-highlighting/highlighters

# History search
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh


