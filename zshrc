#!/bin/zsh

# Activate z
source "$(brew --prefix)/etc/profile.d/z.sh"

# KEY BINDINGS
zmodload zsh/terminfo

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(direnv hook zsh)"
eval "$(starship init zsh)"

# if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
#   tmux attach || exec tmux new-session && exit;
# fi
