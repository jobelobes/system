#!/bin/sh

echo "Installing Homebrew"
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
brew update

echo "Install Homebrew Packages"
brew tap "homebrew/cask"
brew tap "homebrew/cask-fonts"

# Misc
brew install --cask appcleaner
brew install --cask raycast
brew install --cask brave-browser
brew install --cask nordpass
brew install --cask rectangle
brew install --cask onedrive

# Font for zsh theme
brew install --cask font-meslo-lg-nerd-font

# Communication
brew install --cask slack
brew install --cask zoom

# Development
brew install git
brew install kubernetes-cli
brew install --cask iterm2
brew install --cask visual-studio-code
brew install --cask docker

# Cleanup Cache
brew cleanup -s
