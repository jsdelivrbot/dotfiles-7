#!/bin/sh
echo "Setting up Notes CLI app..."
curl https://raw.githubusercontent.com/pimterry/notes/latest-release/notes > /usr/local/bin/notes && chmod +x /usr/local/bin/notes
curl -L https://cdn.jsdelivr.net/gh/pimterry/notes@latest-release/_notes > /usr/local/share/zsh/site-functions/_notes