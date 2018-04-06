#!/bin/sh

# Install all our dependencies with bundle (See ./Brewfile)
echo "Setting up Homebrew..."
brew tap homebrew/bundle
brew bundle