#! /bin/bash

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" && \
rm -rf ~/.oh-my-zsh/custom/plugins && \
ln -s ./oh-my-zsh/custom_plugins ~/.oh-my-zsh/custom/plugins
