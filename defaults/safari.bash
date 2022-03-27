#!/usr/bin/env bash

# Enable the `Develop` menu and the `Web Inspector`
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool "true"
defaults write com.apple.Safari "IncludeDevelopMenu" -bool "true"
defaults write com.apple.Safari "WebKitDeveloperExtrasEnabledPreferenceKey" -bool "true"

# Enable `Debug` menu
defaults write com.apple.Safari "IncludeInternalDebugMenu" -bool "true"

# Show the full URL in the address bar (note: this will still hide the scheme)
defaults write com.apple.Safari "ShowFullURLInSmartSearchField" -bool "true"

# Don't remember passwords
defaults write com.apple.Safari "AutoFillPasswords" -bool "false"

# Enable “Do Not Track”
defaults write com.apple.Safari "SendDoNotTrackHTTPHeader" -bool "true"

# Update extensions automatically
defaults write com.apple.Safari "InstallExtensionUpdatesAutomatically" -bool "true"

# Reflect
killall Safari
