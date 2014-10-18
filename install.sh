#!/bin/sh

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Brew Casks
brew install caskroom/cask/brew-cask

# Programs
brew cask install google-chrome
brew cask install macdown

brew cask install eclipse-ide
brew cask install java

#Install Chromium
sudo mkdir /usr/bin/depot_tools
sudo git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git /usr/bin/depot_tools
echo "export PATH=/usr/bin/depot_tools:\"\$PATH\"" >> ~/.zshrc

# Configuration
defaults write com.apple.desktopservices DSDontWriteNetworkStores true # disables DS_Store files on network drives
echo "function gi() { curl -L -s https://www.gitignore.io/api/\$@ ;}" >> ~/.zshrc && source ~/.zshrc # gitignore.io configuration


# Let Homebrew manage openssl
brew install openssl
brew link --force openssl
