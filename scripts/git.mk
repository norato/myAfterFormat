git: install-git

install-git:
	sudo apt-get install git -y

gitconfig:
	rm -f ~/.gitconfig
	cp -s `pwd`/dotfiles/gitconfig ~/.gitconfig
