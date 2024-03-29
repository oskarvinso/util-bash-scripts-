!#/bin/bash
sudo apt update && sudo apt upgrade -y
sudo apt install apache2 -y &&
sudo apt install libapache-session-perl libcache-cache-perl libclone-perl libconfig-inifiles-perl libconvert-pem-perl libcrypt-openssl-bignum-perl libcrypt-openssl-rsa-perl libcrypt-openssl-x509-perl libcrypt-rijndael-perl libdbi-perl libdigest-hmac-perl libemail-sender-perl libgd-securityimage-perl libhash-merge-simple-perl libhtml-template-perl libio-string-perl libjson-perl libmime-tools-perl libmouse-perl libnet-ldap-perl libplack-perl libregexp-assemble-perl libregexp-common-perl libsoap-lite-perl libstring-random-perl libunicode-string-perl liburi-perl libwww-perl libxml-simple-perl libxml-libxslt-perl libcrypt-urandom-perl libtext-unidecode-perl libcookie-baker-xs-perl libio-socket-timeout-perl -y &&
sudo apt install apache2 libapache2-mod-fcgid libapache2-mod-perl2 &&
sudo apt-get install lemonldap-ng -y &&
sudo apt install apt-transport-https &&
wget https://release.ow2.org/lemonldap/lemonldap-ng-2.0.15.1_deb.tar.gz &&
tar xzf lemonldap-ng-*.tar.gz
cd lemonldap-ng-*
make debian-packages
sudo a2enmod perl
sudo a2enmod headers
sudo a2enmod mod_fcgid
sudo a2enmod ssl
sudo a2enmod rewrite
sudo a2enmod proxy
sudo a2enmod proxy_http
sudo apachectl configtest
sudo apachectl restart
