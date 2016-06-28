include scripts/*
all: init git-install

init:
	sudo apt-get update && sudo apt-get upgrade -y

codecs:
	sudo apt-get install ubuntu-restricted-extras

chrome-install:
	wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
	sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
	sudo apt-get update
	sudo apt-get install google-chrome-stable

skype-install:
	wget -O skype http://download.skype.com/linux/skype-ubuntu-precise_4.1.0.20-1_i386.deb
	sudo dpkg -i skype
	sudo apt-get -f install && sudo rm skype

zeal-install:
	sudo add-apt-repository ppa:zeal-developers/ppa
	sudo apt-get update
	sudo apt-get install zeal
