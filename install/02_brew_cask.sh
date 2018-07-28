if ! [ -x "/usr/local/bin/brew" ]; then
   echo "Homebrew not installed."

else
    echo "Installing software with Homebrew Cask..."
fi


brew tap caskroom/versions
brew tap caskroom/cask
brew tap caskroom/fonts
# Install packages

apps=(
    cyberduck
    docker
    emacs
    firefox
    font-3270
    font-fira-code
    font-menlo-for-powerline
    font-meslo-for-powerline
    srware-iron
    iterm2
    hammerspoon
    kaleidoscope
    macdown
    meld
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

brew cask cleanup
