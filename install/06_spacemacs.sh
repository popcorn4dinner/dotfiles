#!/bin/bash

brew tap railwaycat/emacsmacport

brew install emacs-mac

# git clone https://gitlab.com/popcorn4dinner/emacs.d.git ~/.emacs.d

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

# crystal layer
git clone https://github.com/brantou/spacemacs-crystal-layer.git ~/.emacs.d/private/crystal

# org-trello
git clone https://github.com/popcorn4dinner/trello-org-spacemacs-layer.git ~/.emacs.d/private/trello-org

# Create emacs link in applications folder
ln -s /usr/local/opt/emacs-mac/Emacs.app /Applications
