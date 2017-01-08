node: install-node node-helpers

install-node:
	sudo apt-get install python-software-properties
	curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
	sudo apt-get install nodejs -y

node-helpers:
	sudo npm install bower -g
	sudo npm install http-server -g
	sudo npm install csscomb -g
	sudo npm install git-open -g
	sudo npm install yo -g

npm-permissions:
	$(shell sudo chown -R $(whoami) $(npm config get prefix)/{lib/node_modules,bin,share})
