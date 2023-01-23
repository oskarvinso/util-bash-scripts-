sudo hostnamectl set-hostname ldap.goldhealthgroup.net
sudo echo 192.168.50.200 ldap.goldhealthggroup.net >> /etc/hosts
sudo apt update && sudo apt upgrade -y
sudo apt -y install slapd ldap-utils &&
sudo slapcat
ldapadd -x -D cn=admin,dc=goldhealthgroup,dc=net -W -f basedn.ldif
sudo apt install php-apcu php-bcmath php-cli php-common php-curl php-gd php-gmp php-imagick php-intl php-mbstring php-mysql php-zip php-xml &&
sudo apt install php-ldap php-mail php-session php-curl php-fileinfo php-posix php-zip php-zlib -y &&
sudo apt install php-JSON php-GD php-curl php-ctype -y &&
sudo apt update &&
sudo apt install mysql-server -Y &&
sudo mysql -u root < slapd.sql &&
sudo apt -y install apache2 php php-cgi libapache2-mod-php php-mbstring php-common php-pear
sudo a2enconf php*-cgi
sudo systemctl reload apache2
sudo apt -y install ldap-account-manager &&
sudo cp ldap-account-manager.conf /etc/apache2/conf-enabled/ldap-account-manager.conf &&
sudo systemctl restart apache2 &&
echo "follow this instructions https://computingforgeeks.com/install-and-configure-ldap-account-manager-on-ubuntu/"
xdg-open https://computingforgeeks.com/install-and-configure-ldap-account-manager-on-ubuntu/
