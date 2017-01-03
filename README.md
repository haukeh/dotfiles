# Setting up new MacOS installation

1. Install system updates from terminal

		sudo softwareupdate -i -a -v

2. Copy dotfiles: 

		sh bootstrap.sh

3. Install homebrew
	
		ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

4. Install software

		sh ~/brew.sh

5. Set OSX defaults

		sh ~/.osx

6. Reboot
