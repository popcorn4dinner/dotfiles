#!/bin/bash

brew tap d12frosted/emacs-plus

brew cask install emacs

git clone https://gitlab.com/popcorn4dinner/emacs.d.git ~/.emacs.d

# crystal layer
git clone https://github.com/brantou/spacemacs-crystal-layer.git ~/.emacs.d/private/crystal

