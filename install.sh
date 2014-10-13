#!/bin/sh

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Brew Casks
brew install caskroom/cask/brew-cask

# Programs
brew cask install google-chrome
brew cask install macdown

brew cask install eclipse-ide

