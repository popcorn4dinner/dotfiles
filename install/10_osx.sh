#!/usr/bin/env sh

echo "preparing execution and requesting permissions"
# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo -e "\n\nSetting OS X settings"
echo "=============================="

echo "Finder: hide all filename extensions"
defaults write NSGlobalDomain AppleShowAllExtensions -bool false

echo "Finder: hide hidden files by default"
defaults write com.apple.Finder AppleShowAllFiles -bool false

echo "Finder: When performing a search, search the current folder by default"
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

echo "only use UTF-8 in Terminal.app"
defaults write com.apple.terminal StringEncodings -array 4

echo "expand save dialog by default"
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

echo "show the ~/Library folder in Finder"
chflags nohidden ~/Library #stopped working with high sierra

echo "Show icons for hard drives, servers, and removable media on the desktop"
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

echo "Enable subpixel font rendering on non-Apple LCDs"
defaults write NSGlobalDomain AppleFontSmoothing -int 2

echo "Enable tap to click (Trackpad)"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

echo "Disable auto-correct"
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

echo "Automatically quit printer app once the print jobs complete"
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

echo "setting shortcuts"

# Character         Special Key              Abbreviation
#--------------------------------------------------------
# @                 Command (Apple)   		 CMD
# ~                 Option             		 OPT
# $                 Shift              		 SHIFT
# ^                 Control            		 CTRL

defaults write com.apple.finder NSUserKeyEquivalents ' {
		"Lock Screen" = "@l";
        "Tags..." = "@~t";
}'

echo "activate hold for umlaut"
defaults write -g ApplePressAndHoldEnabled -bool true

echo "=============================="
echo "Kill affected applications"
for app in Safari Finder Dock Mail SystemUIServer; do killall "$app" >/dev/null 2>&1; done
