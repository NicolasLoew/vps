#!/bin/bash

# Ensure the script is run with root privileges
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root"
  exit
fi

# Step 1: Update existing packages ; Make sure to select YES when asked to restart services
echo "Updating existing packages..."
apt update -y
apt upgrade -y
apt autoremove -y

# Step 2: Backup the current sources list
echo "Backing up the current sources list..."
cp /etc/apt/sources.list /etc/apt/sources.list.bak

# Step 3: Modify the sources list to point to Debian 11 repositories
echo "Updating the sources list for Debian 11..."
sed -i 's/buster/bullseye/g' /etc/apt/sources.list

# Step 4: Update package list from new sources; For SSH keep local version
echo "Updating package list from new sources..."
apt update -y

# Step 5: Perform the upgrade
echo "Upgrading to Debian 11..."
apt upgrade -y
apt full-upgrade -y
apt autoremove -y

# Step 6: Reboot the system to apply changes
echo "Rebooting the system..."
reboot
