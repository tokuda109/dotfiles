#!/usr/bin/env bash

# Move the Dock orientation to the left
defaults write com.apple.dock orientation -string left

# Set the icon size of Dock items to 32 pixels
defaults write com.apple.dock tilesize -int 32

# Autohides the Dock
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 0

# Hide recently used apps of the Dock
defaults write com.apple.dock show-recents -bool false

# Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false

# Reflect
killall Dock
