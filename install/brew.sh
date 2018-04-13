if ! [ -x "/usr/local/bin/brew" ]; then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing dependencies with homebrew..."

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
    ctop
    crystal-lang
    diff-so-fancy
    elm
    freetype
    httpie
    htop
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
    readline
    rbenv
    ruby-build
    sqlite
    terraform
    tig
    tree
    thefuck
    ttygif
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

