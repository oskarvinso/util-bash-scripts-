#!/bin/bash
sudo mkdir /$1
sudo cp -r /var /$1
sudo cp -r /etc /$1
sudo cp -r /bin /$1
sudo cp -r /lib* /$1
sudo cp -r /opt /$1
sudo cp -r /snap /$1
sudo cp -r /usr /$1
sudo cp -r /root /$1
sudo cp -r /tmp /$1
sudo mkdir -p /$1/dev /$1/proc /$1/run /$1/srv /$1/home
sudo mount --bind /dev /$1/dev
sudo mount --bind /proc /$1/proc
sudo mount --bind /run /$1/run
sudo mount --bind /srv /$1/srv
sudo mount --bind /home /$1/home
sudo chroot /$1
