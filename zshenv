export TERM="xterm-256color"

# Docker build kit
export COMPOSE_DOCKER_CLI_BUILD=1
export DOCKER_BUILDKIT=1

# set dotfiles variables
source $HOME/.dotfiles

# aliases
source $HOME/.aliases

#export username available
source $HOME/.username

# pleaseing homebrew
export PATH="/usr/local/sbin:$PATH"

# make composer bineries available PATH
export PATH="$PATH:$HOME/.composer/vendor/bin"

# make gems available
export PATH="$HOME/.gem:$PATH"

# custom scripts within dotfiles
export PATH="$DOTFILES_PATH/functions:$PATH"

#for global, gtags, ...
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/sqlite/lib/pkgconfig"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt/sqlite/bin:$PATH"

#for rbenv to be happy
export RUBY_CONFIGURE_OPTS="--disable-dtrace"

#gcloud sdk
export CLOUDSDK_PYTHON="/usr/local/opt/python@3.8/libexec/bin/python"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"

export PATH="$HOME/.exenv/bin:$PATH"

# local overrides:
[[ -f ~/.aliases.local ]] && source ~/.aliases.local
[[ -f ~/.zshrc.local ]] && source ~/.aliases.local
[[ -d ~/.functions.local ]] && export PATH="$HOME/.functions.local:$PATH"
