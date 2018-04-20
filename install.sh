#!/bin/sh

# Ask for the administrator password upfront
sudo -v

echo "Setting up your Mac..."

# Install oh-my-zsh
if [ -n "$ZSH_VERSION" ]; then
  echo "Installing oh-my-zsh..." 
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  echo "Now that oh-my-zsh is installed you might need to open a new terminal window and rerun this script."
  exit 0
fi

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  echo "Homebrew is not installed. Installing..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew update
fi

if [ ! -d "$HOME/Code" ]; then
  echo "Why aren't you already using the ~/Code directory to store this repo?"
  mkdir $HOME/Code
fi

# Run specialist scripts
./brew.sh
./macos.sh
./aliases.sh
./git.sh
./notes.sh

# Bookmetrix
brew services start redis
brew services start postgresql