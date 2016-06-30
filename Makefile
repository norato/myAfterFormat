include scripts/*

all: init git atom node sublime zsh

init: update codecs chrome skype zeal slack

update:
	sudo apt-get update && sudo apt-get upgrade -y
	sudo apt-get install build-essential curl -y

codecs:
	sudo apt-get install ubuntu-restricted-extras -y

chrome:
	wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
	sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
	sudo apt-get update
	sudo apt-get install google-chrome-stable -y

skype:
	wget -O skype http://download.skype.com/linux/skype-ubuntu-precise_4.1.0.20-1_i386.deb
	sudo dpkg -i skype && rm skype

zeal:
	sudo apt-get install zeal -y

slack:
	wget -O slack https://downloads.slack-edge.com/linux_releases/slack-desktop-2.0.6-amd64.deb
	sudo dpkg -i slack && rm slack

spotify:
	sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
	sudo sh -c 'echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list'
	sudo apt-get update
	sudo apt-get install spotify-client
