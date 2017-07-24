#!/bin/bash
# /usr/local/bin/brew-cask-reinstall  
# Usage: brew-cask-reinstall token1 token2 ...  
# Alternatively, brew-cask-reinstall $(brew cask outdated)  
for token in "$@"; do  
    echo "==> Re-installing $token"
    brew cask uninstall --force "$token" && brew cask   install "$token"
done
