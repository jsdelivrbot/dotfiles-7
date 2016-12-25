#!/bin/sh

echo "Setting up your Mac..."

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update

mkdir $HOME/Sites
mkdir $HOME/Projects

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle
