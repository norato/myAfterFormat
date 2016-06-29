zsh-install: install-zsh install-terminator install-ohmyz

install-zsh:
	sudo apt-get install zsh -y

install-terminator:
	sudo apt-get install terminator -y
	chsh -s /bin/zsh

install-ohmyz:
	sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
