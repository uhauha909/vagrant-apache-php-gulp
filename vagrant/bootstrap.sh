#!/usr/bin/env bash
ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
apt-get update
apt-get install -y apache2 php7.2 php7.2-curl
a2enmod rewrite
rm -rf /var/www/html
ln -fs /vagrant-data/html /var/www/html
rm /etc/apache2/sites-available/000-default.conf
cp /vagrant-data/etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/000-default.conf
rm /etc/php/7.2/apache2/php.ini
cp /vagrant-data/etc/php/7.2/apache2/php.ini /etc/php/7.2/apache2/php.ini
service apache2 restart

apt-get install -y nodejs npm
npm install n -g
n stable
apt-get purge -y nodejs npm
PATH="$PATH"
npm config set user 0
npm config set unsafe-perm true
npm install -g sass fibers gulp gulp-sass gulp-postcss css-mqpacker autoprefixer cssnano
cd /vagrant-data/gulp
npm link sass fibers gulp gulp-sass gulp-postcss css-mqpacker autoprefixer cssnano
