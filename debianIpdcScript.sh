#! /bin/bash



sudo apt -y install apache2
sudo apt -y install mysql-server
sudo apt -y install php-pear php-fpm php-dev php-zip php-curl php-xmlrpc php-gd php-mysql php-mbstring php-xml libapache2-mod-php
sudo service apache2 restart
php -r 'echo "\n\nYour PHP installation is working fine.\n\n\n";'

sudo apt-get update
sudo apt-get -y install mysql-server
sudo apt-get -y install mysql-client
sudo apt-get -y install mysql-common
sudo apt-get -y install libmysqlclient20 
sudo apt-get -y install libmysqlclient-dev 
sudo apt-get -y install glade
sudo apt-get -y install ntp
sudo apt-get -y install gtk2.0
sudo apt-get -y install build-essential libgtk2.0-dev
sudo apt-get -y install phpmyadmin


cd DBServer
mysql -uroot -p <"Db.sql"
make
make install

cd ../iPDC
sudo make install

cd ../PMUSimulator
sudo make install


echo "INSTALLATION FINISHED"

