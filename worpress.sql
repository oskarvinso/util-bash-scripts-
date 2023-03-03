CREATE DATABASE wordpress;
CREATE USER 'wp'@'localhost' IDENTIFIED BY 'Mairena1603';
GRANT ALL PRIVILEGES ON nexcloud.* TO 'nextcloud'@'localhost';
CREATE USER 'oscar'@'localhost' IDENTIFIED BY 'Mairena1603';
GRANT ALL PRIVILEGES ON * . * TO 'oscar'@'localhost';
FLUSH PRIVILEGES;
