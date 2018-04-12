#!/bin/bash

sh ./install/xcode-dev-tools.sh && \
sh ./install/brew.sh && \
sh ./install/brew-cask.sh && \
sh ./install/gem.sh && \
sh ./install/yarn.sh && \
sh ./install/emacs.sh && \
sh ./install/dotfiles.sh
