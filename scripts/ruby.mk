rails: rails-dependencies rvm install-rails postgres

rails-dependencies:
	sudo apt-get install -y build-essential autoconf bison libssl-dev libyaml-dev \
	libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm-dev

heroku:
	wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh
	heroku

postgres:
	sudo apt-get install postgresql postgresql-contrib libpq-dev -y

rvm:
	gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
	curl -sSL https://get.rvm.io | bash -s stable --ruby

install-rails:
	gem install bundler rails

jekyll:
	gem install jekyll

tmux:
	sudo apt-get install -y tmux
	gem install tmuxinator
