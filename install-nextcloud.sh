wget https://download.nextcloud.com/server/releases/nextcloud-24.0.1.zip
sudo apt-get update && sudo apt-get upgrade -y &&
sudo apt install unzip apache2 &&
sudo apt update && sudo apt upgrade
sudo apt install mysql-server &&
sudo apt install apache2 libapache2-mod-php php-gd php-mysql php-curl php-mbstring php-intl php-gmp php-bcmath php-xml php-imagick php-zip -y &&
sudo apt install php-mail php-ldap -y &&
sudo a2dismod mpm_event
sudo a2enmod mpm_prefork
sudo systemctl restart apache2 &&
sudo systemctl status apache2 >> nxcinstall-log.txt &&
sudo systemctl status mysql >> nxcinstall-log.txt
sudo systemctl enable mysql &&
sudo mysql -u root < nxcdb.sql &&
sudo service mysql restart &&
sudo apt install php &&
php -v >> nxcinstall-log.txt
sudo apt-get update && sudo apt-get upgrade -y &&
sudo apt install libmagickcore-6.q16-6-extra &&
unzip nextcloud-24.0.1.zip &&
sudo chown -R www-data:www-data nextcloud &&
sudo mv nextcloud /var/www/html &&
sudo chown -R www-data:www-data /var/www/nextcloud
sudo a2dissite 000-default.conf
sudo cp nextcloud.conf /etc/apache2/sites-available/ &&
sudo a2ensite nextcloud.conf &&
sudo service apache2 restart &&
