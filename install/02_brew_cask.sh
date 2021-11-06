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
    brave-browser
    cyberduck
    discord
    docker
    firefox
    font-3270
    font-cascadia-code
    font-fira-code
    font-menlo-for-powerline
    font-meslo-for-powerline
    font-meslo-nerd-font
    font-source-code-pro
    google-chrome
    google-cloud-sdk
    insomnia
    kitty
    srware-iron
    kaleidoscope
    slack
    transmit
    visual-studio-code
    vlc
)

brew install --cask "${apps[@]}"

brew cleanup
