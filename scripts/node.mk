node-install:
	sudo add-apt-repository ppa:chris-lea/node.js
	sudo apt-get update
	sudo apt-get install nodejs
	sudo apt-get install npm

node-helpers-install:
	sudo npm install nodemon -g
	sudo npm install express -g
	sudo npm install jitsu -g
	sudo npm install roots -g
