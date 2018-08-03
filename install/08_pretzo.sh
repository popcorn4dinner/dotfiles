#! /bin/zsh

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in “${ZDOTDIR:-$HOME}”/.zprezto/runcoms/^README.md(.N); do
    ln -s “$rcfile” “${ZDOTDIR:-$HOME}/.${rcfile:t}”
done

# install newest version of powerlevel9k prompt
rm -rf ~/.zprezto/modules/prompt/external/powerlevel9k
rm -f ~/.zprezto/modules/prompt/functions/prompt_powerlevel9k_setup

git clone https://github.com/bhilburn/powerlevel9k.git ~/.zprezto/modules/prompt/external/powerlevel9k

ln -s ~/.zprezto/modules/prompt/external/powerlevel9k/powerlevel9k.zsh-theme ~/.zprezto/modules/prompt/functions/prompt_powerlevel9k_setup

# make zsh default shell
chsh -s /bin/zsh

git clone https://github.com/popcorn4dinner/zsh-iterm-touchbar.git "$DOTFILES_PATH/zsh_plugins/zsh-iterm-touchbar"
got clone https://github.com/unixorn/warhol.plugin.zsh.git "$DOTFILES_PATH/zsh_plugins/warhol"
