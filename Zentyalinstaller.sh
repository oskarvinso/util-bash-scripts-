#!/bin/bash
sudo echo > /etc/apt/sources.list
sudo apt update -y
sudo apt-get install fwupd libfwupd2 libfwupdplugin5 -y1
sudo apt-get update -y && sudo apt-get upgrade-y
sudo dpkg --configure -a
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get install net-tools && sudo apt-get install nmap -y
wget https://zentyal.com/zentyal_installer.sh
sudo chmod u+x zentyal_installer.sh
sudo ./zentyal_installer.sh
