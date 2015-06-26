udo adduser vaibhavb
visudo

# Setup Rails - https://gorails.com/setup/ubuntu/14.04
sudo apt-get update
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
cd
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash

rbenv install 2.2.2
rbenv global 2.2.2
ruby -v

sudo apt-get install software-properties-common
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install nodejs

gem install rails -v 4.2.1
rbenv rehash
sudo apt-get install mysql-server mysql-client libmysqlclient-dev

#passenger
gem install passenger
passenger-install-apache2-module

#passenger and apache
# https://www.phusionpassenger.com/documentation/Users%20guide%20Apache.html#working_with_apache_conf
apt-get install apache2-threaded-dev
apt-get install libapr1-dev
apt-get install libaprutil1-dev


