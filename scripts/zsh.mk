zsh: terminator install-zsh ohmyz

install-zsh:
	sudo apt-get install zsh -y
	chsh -s /bin/zsh

terminator:
	sudo apt-get install terminator -y

ohmyz:
	sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"


zshconfig:
	rm -f ~/.zshrc
	cp `pwd`/dotfiles/zshrc ~/.zshrc
