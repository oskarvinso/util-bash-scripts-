#!/bin/bash

# This script will find your current geographic location

# Get the IP address of the current machine

IP_ADDRESS=$(ip addr show | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1')

# Use the IP address to get the geographic location

LOCATION=$(curl -s ipinfo.io/$IP_ADDRESS)

# Print the location

echo $LOCATION

loc=$(echo $object | grep -oP '(?<=loc: )[^",]*')
xdg-open "https://www.google.com/maps/search/?api=1&query=$loc"

