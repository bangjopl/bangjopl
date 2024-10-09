#!/bin/bash

# Update sources.list to use archive.debian.org
sed -i 's/deb.debian.org/archive.debian.org/g' /etc/apt/sources.list
sed -i 's|security.debian.org|archive.debian.org|g' /etc/apt/sources.list
sed -i '/stretch-updates/d' /etc/apt/sources.list

# Update and upgrade the system
apt update -y
apt upgrade -y
apt install traceroute
apt install openssh-client

# chmod +x update.sh
# sudo ./update.sh
# filetool.sh -b
