#!/usr/bin/env bash

brew update
brew upgrade

brew install moreutils
brew install findutils
brew install gnu-sed --with-default-names
brew tap homebrew/versions
brew install bash-completion2

brew install bash
# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

brew install wget --with-iri
brew install vim --with-override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install ssh-copy-id
brew install tree
brew install zopfli
brew install openssl

brew install jenv
brew cask install java
brew install scala

brew cask install dropbox
brew cask install 1password
brew cask install intellij-idea
brew cask install google-chrome
brew cask install spectacle
brew cask install sublime-text
brew cask install slack
brew cask install spotify

brew cleanup
