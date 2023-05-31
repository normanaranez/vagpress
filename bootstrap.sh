sudo locale-gen UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8


sudo fallocate -l 4G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo cp /vagrant/setup/fstab /etc/fstab
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
sudo apt-get update

sudo apt-get -y install apache2
sudo apt-get -y install php8.2
sudo apt-get -y install libapache2-mod-php8.2
sudo apt-get -y install mysql-server
sudo apt-get -y install php8.2-fpm
sudo apt-get -y install php8.2-mysqlnd
sudo apt-get -y install php8.2-mysql
sudo apt-get -y install curl
sudo apt-get -y install php8.2-curl
sudo apt-get -y install php8.2-gd
sudo apt-get -y install php8.2-mbstring
sudo apt-get -y install php8.2-mod

sudo cp /vagrant/setup/000-default.conf /etc/apache2/sites-available/
sudo cp /vagrant/setup/php.ini /etc/php/8.2/fpm/php.ini
sudo cp /vagrant/setup/php-apache.ini /etc/php/8.2/apache2/php.ini
sudo cp /vagrant/setup/apache2.conf /etc/apache2/apache2.conf
sudo a2enmod rewrite
mysql -uroot -proot -e 'create database IF NOT EXISTS `wordpress`;'
mysql -uroot -proot wordpress <  /vagrant/db/wordpress.sql
sudo chmod 777 /vagrant/wordpress
sudo chmod 777 /vagrant/wordpress/
sudo service apache2 restart