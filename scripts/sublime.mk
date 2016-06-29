sublime-install: install-sublime

install-sublime:
	wget -O sublime https://download.sublimetext.com/sublime-text_build-3114_amd64.deb
	sudo dpkg -i sublime && rm sublime
