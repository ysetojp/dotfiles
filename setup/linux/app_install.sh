# internet
sudo apt-get -y install firefox
sudo apt-get -y install firefox-locale-ja

# multimedia
sudo apt-get -y install vlc
sudo apt-get -y install mplayer

# development
sudo apt-get -y install common-lisp-controller
sudo apt-get -y install gauche
sudo apt-get -y install gauche-gl
sudo apt-get -y install gauche-gtk
sudo apt-get -y install haskell-platform

# virtual environment
sudo apt-get -y install virtualbox-qt
sudo apt-get -y install vagrant

# web
sudo apt-get -y install apache2
sudo apt-get -y install libapache2-mod-php
sudo apt-get -y install nodejs
sudo apt-get -y install npm
sudo npm install -g gulp
sudo ln -s /usr/bin/nodejs /usr/bin/node

curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
sudo chmod +x /usr/local/bin/composer

sudo apt-get -y install postgresql postgresql-contrib

# git
sudo apt-get -y install tig
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
dpkg -i gitkraken-amd64.deb
