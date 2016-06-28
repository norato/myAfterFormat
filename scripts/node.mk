node-install: install-node node-helpers-install

install-node:
	sudo add-apt-repository ppa:chris-lea/node.js
	sudo apt-get update
	sudo apt-get install nodejs
	sudo apt-get install npm

node-helpers-install:
	sudo npm install bower -g
	sudo npm install http-server -g
	sudo npm install csscomb -g
	sudo npm install gitopen -g
	sudo npm install yo -g
