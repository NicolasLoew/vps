#!/bin/bash
printf "Hello. This is an OTS setup script provided by Damon at Otland. Please standby as user input may be required."
read -r -p "Do you want to install the webpanel? [Y/n]" response
 response=${response,,} # tolower
 if [[ $response =~ ^(yes|y| ) ]]; then
    wget https://raw.githubusercontent.com/NicolasLoew/vps/master/panelsetup.sh
    sh panelsetup.sh
 fi
 printf "If you installed webpanel please navigate to http://yourip:2004/ and follow install instructions."
 printf "Once you have installed the webpanel login and go to Enduser-->Configuration-->Apache and delete everything in the config and replace it with https://raw.githubusercontent.com/NicolasLoew/vps/master/apacheconfig. This will be needed for Znote later."
read -r -p "Do you want to compile latest TFS? [Y/n]" response
 response=${response,,} # tolower
 if [[ $response =~ ^(yes|y| ) ]]; then
    wget https://raw.githubusercontent.com/NicolasLoew/vps/master/tfsauto.sh
    chmod +x ./tfsauto.sh
    ./tfsauto.sh
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



