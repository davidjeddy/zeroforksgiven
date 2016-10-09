INT ENV SETUP:
AWS EC2 : Ubuntu 14

# Update / upgrade system
sudo -i
apt-get update
# Follow the instructions to upgrade the system to the latest

# Apache2.x & KMySQL 5.x services
apt-get install apache2 mysql-server mysql-client
service apache2 status
service mysql status

# PHP 5.6 lang
add-apt-repository ppa:ondrej/php
apt-get install php5.6
php -v

# Dev tools
apt-get install git htop multitail tmux

# Setup a swap file
https://www.digitalocean.com/community/tutorials/how-to-add-swap-space-on-ubuntu-16-04

