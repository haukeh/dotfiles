#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

brew update
brew upgrade

brew tap homebrew/dupes
brew install caskroom/cask/brew-cask

brew install git

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

brew install moreutils
brew install findutils
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion
brew install wget --with-iri
brew install vim --override-system-vi
brew install grep
brew install openssh
brew install screen
brew install openssl
brew install nano
brew install less
brew install pstree
brew install ngrep
brew install tree

brew cask install java
brew install scala
brew install maven
brew install sbt
brew install npm

brew install wireshark
brew install jenv
brew cask install sublime-text
brew cask install tunnelblick
brew cask install postgres
brew cask install spectacle
brew cask install dropbox
brew cask install skype
brew cask install intellij-idea



brew cleanup
brew doctor
