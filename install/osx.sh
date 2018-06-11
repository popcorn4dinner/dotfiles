#!/usr/bin/env sh

echo -e "\n\nSetting OS X settings"
echo "=============================="

echo "Finder: hide all filename extensions"
defaults write NSGlobalDomain AppleShowAllExtensions -bool false

echo "hide hidden files by default"
defaults write com.apple.Finder AppleShowAllFiles -bool false

echo "only use UTF-8 in Terminal.app"
defaults write com.apple.terminal StringEncodings -array 4

echo "expand save dialog by default"
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

echo "show the ~/Library folder in Finder"
chflags nohidden ~/Library

echo "Enable subpixel font rendering on non-Apple LCDs"
defaults write NSGlobalDomain AppleFontSmoothing -int 2

echo "Use current directory as default search scope in Finder"
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

echo "Enable tap to click (Trackpad)"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true


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

echo "=============================="
echo "Kill affected applications"
for app in Safari Finder Dock Mail SystemUIServer; do killall "$app" >/dev/null 2>&1; done
