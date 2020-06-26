if ! [ -x "/usr/local/bin/brew" ]; then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing dependencies with homebrew..."

brew tap homebrew/core
brew tap homebrew/command-not-found
brew tap homebrew/services

brew update
brew upgrade

# Install packages

apps=(
    ansible
    antigen
    awscli
    cairo
    composer
    ctop
    crystal-lang
    diff-so-fancy
    elixir-build
    elixir
    elm
    exbenv
    freetype
    httpie
    htop
    git
    go
    graphite2
    graphviz
    imagemagick --with-webp
    ispell --with-lang-en
    jpeg
    jq
    kubernetes-cli
    kubectx
    kubernetes-helm
    librsvg
    libxml2
    libyaml
    markdown
    mysql
    ncdu
    nettle
    node
    nodenv
    openshift-cli
    openssl
    packer
    php72
    php-code-sniffer
    phpunit
    plantuml
    python
    pyenv
    readline
    rbenv
    ruby-build
    sqlite
    terraform
    tig
    trash
    tree
    thefuck
    the_silver_searcher
    ttygif
    watchman
    wget
    xz
    yarn
    zsh
    zsh-completions
    zsh-history-substring-search
    zsh-syntax-highlighting
    z
)

brew install "${apps[@]}"
brew cleanup

# link emacs-mac to apps folder
ln -s /usr/local/opt/emacs-mac/Emacs.app /Applications
