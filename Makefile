include scripts/*
all: init git-install

init:
	sudo apt-get update && sudo apt-get upgrade -y
