#!/bin/sh

echo "Setting up git shortcuts..."

git config --global user.email charlie@sonniesedge.co.uk
git config --global user.name "Charlie Owen"

git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.gd diff
git config --global alias.st status
git config --global alias.br branch
git config --global alias.hist "log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"