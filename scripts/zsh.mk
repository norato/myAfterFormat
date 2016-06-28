zsh-install: install-zsh

install-zsh:
	sudo apt-get install zsh terminator
	wget –no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O – | sh
	chsh -s /bin/zsh
