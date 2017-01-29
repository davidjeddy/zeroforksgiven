INT ENV SETUP:
AWS EC2 : Ubuntu 14

# Update / upgrade system
sudo -i
apt-get update #Follow the instructions to upgrade the system to the latest

# Apache2.x & MySQL 5.x services
apt-get install apache2 mysql-server mysql-client
service apache2 status
service mysql status

# PHP 5.6 lang
add-apt-repository ppa:ondrej/php
add-apt-repository ppa:ondrej/php
apt-get install php5.6
php -v
apt-get install php5.6-mbstring php5.6-mcrypt php5.6-mysql php5.6-intl php5.6-curl php5.6-dom

# Dev tools
apt-get install git htop multitail tmux php5.6-mbstring php5.6-mcrypt php5.6-mysql

# Setup a swap file
https://www.digitalocean.com/community/tutorials/how-to-add-swap-space-on-ubuntu-16-04

# Automated SQL backup
install and configure https://github.com/vitalif/grive2

# Add to cron as a daily job
ubuntu: `sudo mv ./dbBackup.sh /etc/cron.daily`

#docker
docker-compose up --build
docker exec -it zeroforksgiven sh
php composer.phar global require "fxp/composer-asset-plugin"
php composer.phar install --ansi --prefer-source -o -vv
php console/yii app/setup
exit