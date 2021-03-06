#!/bin/bash
printf "Hello. This is an OTS setup script provided by Damon at Otland. Please standby as user input may be required."
printf "Installing sudo and update packages"
apt-get install sudo -y
read -r -p "Do you want to install the LAMPP+phpMyAdmin? [Y/n]" response
 response=${response,,} # tolower
 if [[ $response =~ ^(yes|y| ) ]]; then
    wget https://raw.githubusercontent.com/NicolasLoew/vps/master/lamp.sh
    chmod +x lamp.sh
   sudo ./lamp.sh
    printf "You have successfully installed LAMPP! Now phpMyAdmin.."
    wget https://raw.githubusercontent.com/NicolasLoew/vps/master/pma.sh
    chmod +x pma.sh
    sudo ./pma.sh
    printf "You have installed phpMyAdmin!"
    fi
 read -r -p "Do you want to compile latest TFS? [Y/n]" response
 response=${response,,} # tolower
 if [[ $response =~ ^(yes|y| ) ]]; then
    wget https://raw.githubusercontent.com/NicolasLoew/vps/master/tfsauto.sh
    chmod +x ./tfsauto.sh
    sudo ./tfsauto.sh
    printf "You have successfully compiled TFS! You can start it by going to cd forgottenserver and execute ./tfs. Dont forget to configure config.lua though. You can create database in webpanel-->enduser."
 fi
 read -r -p "Do you want to install ZnoteAAC? [Y/n]" response
 response=${response,,} # tolower
 if [[ $response =~ ^(yes|y| ) ]]; then
  wget https://raw.githubusercontent.com/NicolasLoew/vps/master/znotesetup.sh
  chmod +x znotesetup.sh
  ./znotesetup.sh
  printf "You havee successfully setup ZnoteAAC. Navigate to http://yourip and follow the instructions."
 fi
printf "Please remember to configure TFS configlua and Znote configphp."


