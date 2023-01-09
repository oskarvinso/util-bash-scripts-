wget https://download.nextcloud.com/server/releases/nextcloud-24.0.1.zip
apt-get update && apt-get upgrade -y &&
apt install unzip apache2 &&
ufw allow OpenSSH
ufw allow in "Apache Full"
ufw enable
ufw status > nxcinstall-log.txt
a2dismod mpm_event
a2enmod mpm_prefork
systemctl restart apache2 &&
systemctl status apache2 >> nxcinstall-log.txt &&
apt install mariadb-server &&
systemctl status mariadb >> nxcinstall-log.txt
systemctl enable mariadb
mysql -u root < nxcdb.sql &&
service mysql restart&&
apt install php &&
php -v >> nxcinstall-log.txt
apt-get update && apt-get upgrade -y &&
apt install php-apcu php-bcmath php-cli php-common php-curl php-gd php-gmp php-imagick php-intl php-mbstring php-mysql php-zip php-xml &&
apt install libmagickcore-6.q16-6-extra &&
unzip nextcloud-24.0.1.zip &&
chown -R www-data:www-data nextcloud &&
mv nextcloud /var/www/html &&
a2dissite 000-default.conf
cp nextcloud.conf /etc/apache2/sites-available/ &&
a2ensite nextcloud.conf &&
service apache2 restart &&
