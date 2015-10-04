#!/bin/bash
# install brews in the `Brewfile` and `Caskfile`

cd ~/aesinvDotfiles

# Make sure we have the latest version of Homebrew
brew update

# Make sure we have cask installed
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

# Upgrade any installed brews
brew upgrade

# Install all brews included in the Brewfile
brew install $(cat ./Brewfile|grep -v "#")

#Install all casks included in the Caskfile
brew cask install $(cat ./Caskfile|grep -v "#")

# Remove outdated versions from the cellar
brew cleanup
