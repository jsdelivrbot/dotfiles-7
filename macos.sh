#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Show IP and hostname info on logon screen
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

# Require password 5 seconds after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 5
defaults write com.apple.screensaver askForPasswordDelay -int 5i

# Disable warning when chaning file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Show the ~/Library folder
chflags nohidden $HOME/Library

# Hot corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
# Top left screen corner → Screensaver
defaults write com.apple.dock wvous-tl-corner -int 5
defaults write com.apple.dock wvous-tl-modifier -int 0
