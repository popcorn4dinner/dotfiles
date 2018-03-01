if ! is-macos -o ! is-executable brew; then
    echo "Skipped: Homebrew-Cask"
    return
fi

brew tap caskroom/versions
brew tap caskroom/cask
brew tap caskroom/fonts
brew tap d12frosted/emacs-plus

# Install packages

apps=(
    cyberduck
    docker
    emacs
    firefox
    font-fira-code
    font-menlo-for-powerline
    srware-iron
    iterm2
    hammerspoon
    kaleidoscope
    macdown
    postman
    slack
    spotify
    sublime-text
    transmit
    vlc
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize webpquicklook suspicious-package qlvideo
