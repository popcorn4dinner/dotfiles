if ! is-macos -o ! is-executable ruby -o ! is-executable curl -o ! is-executable git; then
    echo "Skipped: Homebrew (missing: ruby, curl and/or git)"
    return
fi

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap homebrew/core
brew tap homebrew/php
brew tap homebrew/services
brew tap homebrew/versions

brew update
brew upgrade

# Install packages

apps=(
    ansible
    awscli
    cairo
    composer
    diff-so-fancy
    elm
    freetype
    git
    go
    graphite2
    graphviz
    imagemagick@6
    jpeg
    jq
    kubernetes-cli
    librsvg
    libxml2
    libyaml
    markdown
    mysql
    nettle
    node
    openshift-cli
    openssl
    packer
    php72
    php-code-sniffer
    phpunit
    python
    python3
    rbenv
    ruby-build
    sqlite
    terraform
    watchman
    wget
    xz
    yarn
    zsh
    zsh-history-substring-search
    zsh-syntax-highlighting
)

brew install "${apps[@]}"

export DOTFILES_BREW_PREFIX_COREUTILS=`brew --prefix coreutils`
set-config "DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_CACHE"

ln -sfv "$DOTFILES_DIR/etc/mackup/.mackup.cfg" ~
