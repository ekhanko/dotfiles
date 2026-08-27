#!/usr/bin/env bash

# Dock
defaults write com.apple.dock "orientation" -string "left"
defaults write com.apple.dock "tilesize" -int "46"
defaults write com.apple.dock "autohide" -bool "true"
defaults write com.apple.dock "autohide-time-modifier" -float "0"
defaults write com.apple.dock "autohide-delay" -float "0"
defaults write com.apple.dock "show-recents" -bool "false"
defaults write com.apple.dock "mineffect" -string "scale"

killall Dock

# Finder
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"
defaults write com.apple.finder "AppleShowAllFiles" -bool "true"
defaults write com.apple.finder "ShowPathbar" -bool "true"
defaults write com.apple.finder "FXPreferredViewStyle" -string "Nlsv"
defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf"
defaults write com.apple.finder "FXEnableExtensionChangeWarning" -bool "false"
defaults write NSGlobalDomain "NSDocumentSaveNewDocumentsToCloud" -bool "false"
defaults write NSGlobalDomain "NSToolbarTitleViewRolloverDelay" -float "0"
defaults write NSGlobalDomain "NSTableViewDefaultSizeMode" -int "2"
defaults write com.apple.finder "ShowStatusBar" -bool "true"

# Desktop
defaults write com.apple.finder "ShowExternalHardDrivesOnDesktop" -bool "false"
defaults write com.apple.finder "ShowRemovableMediaOnDesktop" -bool "false"
defaults write com.apple.finder "ShowMountedServersOnDesktop" -bool "false"

killall Finder

# Mouse
defaults write NSGlobalDomain com.apple.mouse.scaling -float "3"

# Trackpad
defaults write com.apple.AppleMultitouchTrackpad "FirstClickThreshold" -int "0"

# Keyboard
defaults write NSGlobalDomain "ApplePressAndHoldEnabled" -bool "false"
defaults write com.apple.HIToolbox AppleFnUsageType -int "0"
defaults write NSGlobalDomain AppleKeyboardUIMode -int "1"
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false
defaults write kCFPreferencesAnyApplication TSMLanguageIndicatorEnabled -bool "false"
defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 1

# Mission control
defaults write com.apple.dock "mru-spaces" -bool "false"
defaults write NSGlobalDomain "AppleSpacesSwitchOnActivate" -bool "false"
defaults write com.apple.spaces "spans-displays" -bool "false"

# TextEdit
defaults write com.apple.TextEdit "RichText" -bool "false"

# Misc
defaults write com.apple.CloudSubscriptionFeatures.optIn "545129924" -bool "false"
defaults write NSGlobalDomain "NSQuitAlwaysKeepsWindows" -bool "false"

defaults -currentHost write -g AppleFontSmoothing -int 0

