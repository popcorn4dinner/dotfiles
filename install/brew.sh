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
    go
    libxml2
    python
    python3
    autoconf
    gobject-introspection
    libyaml
    awscli
    graphite2
    markdown
    rakudo-star
    cairo
    graphviz
    mysql
    rbenv
    ruby-build
    composer
    harfbuzz
    nettle
    readline
    coreutils
    icu4c
    node
    diff-so-fancy
    imagemagick@6
    oniguruma
    shared-mime-info
    elm
    jpeg
    openshift-cli
    socat
    fontconfig
    jq
    openssl
    sqlite
    freetype
    kubernetes-cli
    terraform
    packer
    watchman
    gettext
    git
    librsvg
    php-code-sniffer
    wget
    php72
    phpunit
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
