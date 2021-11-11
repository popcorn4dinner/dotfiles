if ! [ -x "/opt/homebrew/bin/brew" ]; then
   echo "Homebrew not installed."

else
    echo "Installing software with Homebrew Cask..."
fi


brew tap homebrew/cask
brew tap homebrew/cask-versions
brew tap homebrew/cask-fonts

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
    font-meslo-lg-nerd-font
    font-source-code-pro
    google-chrome
    google-cloud-sdk
    insomnia
    kitty
    kaleidoscope
    slack
    transmit
    visual-studio-code
    vlc
)

brew install --cask "${apps[@]}"

brew cleanup
