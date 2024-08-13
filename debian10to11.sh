#!/bin/bash

# Check if the script is run as root
if [ "$(id -u)" -ne 0 ]; then
  echo "Please run this script as root or use sudo."
  exit 1
fi

echo "Step 1: Update the package list and upgrade current packages"
apt update
apt upgrade -y

echo "Step 2: Backup the current sources.list file"
cp /etc/apt/sources.list /etc/apt/sources.list.bak

echo "Step 3: Update the sources.list file to use Debian 11 repositories"
# Overwrite the sources.list with Debian 11 (Bullseye) repositories
cat <<EOL > /etc/apt/sources.list
deb http://deb.debian.org/debian bullseye main
deb http://deb.debian.org/debian bullseye-updates main
deb http://security.debian.org/debian-security/ bullseye-security main
EOL

echo "Step 4: Clean the apt cache"
apt clean

echo "Step 5: Update the package list with new Debian 11 sources"
apt update

echo "Step 6: Perform a full upgrade to Debian 11"
apt full-upgrade -y

echo "Step 7: Remove obsolete packages"
apt autoremove -y

echo "Step 8: Reboot the system to complete the upgrade"
reboot

# After the reboot, the system should be running Debian 11.
