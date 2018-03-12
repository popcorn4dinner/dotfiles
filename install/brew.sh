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
    imagemagick --with-webp
    jpeg
    jq
    kubernetes-cli
    librsvg
    libxml2
    libyaml
    markdown
    mysql
    ncdu
    nettle
    node
    openshift-cli
    openssl
    packer
    php72
    php-code-sniffer
    phpunit
    python
    pyenv
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
    z
)

brew install "${apps[@]}"
brew cleanup

# python versions
pyenv install 3.6.4
pyenv install 2.7
pyenv global 2.6.4

# ruby versions
rbenv install 2.3.6
rbenv install 2.4.3
rbenv global 2.4.3
