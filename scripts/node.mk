node-install: install-node npm-permissions node-helpers

install-node:
	curl -sL https://deb.nod/esource.com/setup_6.x | sudo -E bash -
	sudo apt-get install nodejs -y

npm-permissions:
	$(shell sudo chown -R $(whoami) $(npm config get prefix)/{lib/node_modules,bin,share})

node-helpers:
	npm install bower -g
	npm install http-server -g
	npm install csscomb -g
	npm install gitopen -g
	npm install yo -g
