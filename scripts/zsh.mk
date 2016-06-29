zsh-install: install-zsh install-terminator install-ohmyz

install-zsh:
	sudo apt-get install zsh -y

install-terminator:
	sudo apt-get install terminator -y

install-ohmyz:
	wget –no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O – | sh
	chsh -s /bin/zsh
