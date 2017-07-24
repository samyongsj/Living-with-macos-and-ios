# Living-with-macos-and-ios
Tips and tricks to make the switch from linux/android easier. 

## MacOS

**Problem**: Access to GNU tools + easy way to update applications  

**Solution**: Homebrew and Homebrew cask. Cask does not update outdated packages as of yet. 

use this script to upgrade all casks
```
 #!/bin/bash 
 # /usr/local/bin/brew-cask-reinstall  
 # Usage: brew-cask-reinstall token1 token2 ...  
 # Alternatively, brew-cask-reinstall $(brew cask outdated)  
 
for token in "$@"; do  
    echo "==> Re-installing $token"  
    brew cask uninstall --force "$token" && brew cask   install "$token"
done
```
## iOS

**Problem**: even with iOS 11 beta there is no way to synchronize batches of files for offline use   

**Solution**: Download Documents 6 and set up folders for synchonization. Seriously what is Apple doing with their files application I hope it doesn't remain like that when iOS 11 comes out of beta.  

**Problem**: no access to debian no-root, unable to use youtube-dl  

**Solution**: Download Pythonista + StaSh - use pip to install youtube-dl. Download as per normal and share to Documents 6

**Problem**: no access to debian no-root, unable to use mathics  
still no solution.
