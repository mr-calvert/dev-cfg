#!/usr/bin/env bash

xcode-select --install

# check for Homebrew, install if not present
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew tap caskroom/cask

brew install coreutils
brew install binutils
brew install diffutils
brew install findutils --with-default-names
brew install gawk
brew install gnu-sed --with-default-names
brew install gnu-tar --with-default-names
brew install gnu-which --with-default-names
brew install gnutls
brew install grep --with-default-names
brew install gzip
brew install screen
brew install watch
brew install wdiff --with-gettext
brew install wget

brew install bash
brew install emacs
#brew install gdb
brew install gpatch
brew install less
brew install m4
brew install make
brew install nano

brew install file-formula
brew install git
brew install openssh
brew install perl
brew install python
brew install rsync
brew install svn
brew install unzip
brew install vim --override-system-vi
brew install zsh

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

brew cask install iterm2
brew cask install macvim
brew cask install spotify
brew cask install gitter
brew cask install google-chrome
brew cask install docker
brew cask install dropbox
brew cask install 1password
brew cask install 1password-cli
brew cask install google-backup-and-sync


brew install mas

brew cask cleanup
brew cleanup

# Evernote
mas install 406056744

# show all filename extensions in Finder by default
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# default to  column view in Finder windows
defaults write com.apple.finder FXPreferredViewStyle Clmv

# suppress creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# set Dock to auto-hide and remove the auto-hiding delay
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0

# put Dock in the lower left corner
defaults write com.apple.Dock orientation -string left
defaults write com.apple.Dock pinning -string start

# write screenshots to ~/Desktop in PNG format
defaults write com.apple.screencapture location -string "$HOME/Desktop"
defaults write com.apple.screencapture type -string "png"

# suppress automatic rearranging of Spaces based on recent use
defaults write com.apple.dock mru-spaces -bool false

# set fast-ish key repeat rate
defaults write NSGlobalDomain KeyRepeat -int 2

# default to Empty Trash securely
defaults write com.apple.finder EmptyTrashSecurely -bool true

# stop hiding the ~/Library folder
chflags nohidden ~/Library

echo "Restart the machine after all this!"