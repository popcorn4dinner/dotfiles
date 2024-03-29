if ! [ -x "/opt/homebrew/bin/brew" ]; then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing dependencies with homebrew..."

brew tap homebrew/core
brew tap homebrew/services

brew update
brew upgrade

# Install packages

apps=(
    bat
    ctop
    crystal
    diff-so-fancy
    direnv
    elixir-build
    elixir
    elm
    exenv
    fish
    freetype
    httpie
    htop
    gh
    git
    go
    graphviz
    ispell
    jpeg
    jq
    kubernetes-cli
    kubectx
    kubernetes-helm
    lua
    markdown
    mysql
    nettle
    node
    nodenv
    openssl
    plantuml
    python
    python3
    pyenv
    readline
    rbenv
    ruby-build
    sqlite
    svn
    starship
    terraform
    tig
    tmux
    trash
    tree
    the_silver_searcher
    wget
    yarn
    zsh-completions
    zsh-history-substring-search
    zsh-syntax-highlighting
    z
)

brew install "${apps[@]}"
brew cleanup
