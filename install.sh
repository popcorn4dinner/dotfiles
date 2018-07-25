#!/usr/bin/env sh

echo "preparing execution and requesting permissions"
# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "setting username"
echo "export USERNAME='$(whoami)'" > ~/.username

echo "executing installers..."
for script in install/*.sh; do
    echo "========================================================"
    echo "    running $(basename "$script")"
    echo "========================================================"
    echo ""
    sh script
    echo "========================================================"
    echo "    finished $(basename "$script")"
    echo "========================================================"
    echo ""
    echo ""
    echo ""
done

echo "all installers were executed."

chsh -s /bin/zsh
