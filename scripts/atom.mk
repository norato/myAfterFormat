atom: install-atom

install-atom:
	wget -O atom https://atom.io/download/deb
	sudo dpkg -i atom && rm atom
