zsh-install: install-zsh install-terminator install-ohmyz

install-zsh:
	sudo apt-get install zsh -y
	chsh -s /bin/zsh

install-terminator:
	sudo apt-get install terminator -y

install-ohmyz: install-zsh
	sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
