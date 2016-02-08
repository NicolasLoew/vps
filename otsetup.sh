#!/bin/bash
printf "Hello. This is an OTS."
read -p "Are you sure? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    wget https://raw.githubusercontent.com/NicolasLoew/vps/master/panelsetup.sh
    sh panelsetup.sh
fi
 printf "If you installed webpanel please navigate to http://yourip:2004/ and follow install instructions."
 printf "Once you have installed the webpanel login and go to Enduser-->Configuration-->Apache and delete everything in the config and replace it with https://raw.githubusercontent.com/NicolasLoew/vps/master/apacheconfig. This will be needed for Znote later."
read -r -p "Do you want to compile latest TFS? [Y/n]" response
 response=${response,,} # tolower
 if [[ $response =~ ^(yes|y| ) ]]; then
    wget https://raw.githubusercontent.com/NicolasLoew/vps/master/tfsauto.sh
    sh tfsauto.sh
 fi
 printf "You have successfully compiled TFS! You can start it by going to cd forgottenserver and execute ./tfs. Dont forget to configure config.lua though. You can create database in webpanel-->enduser."
 read -r -p "Do you want to install ZnoteAAC? [Y/n]" response
 response=${response,,} # tolower
 if [[ $response =~ ^(yes|y| ) ]]; then
  wget https://raw.githubusercontent.com/NicolasLoew/vps/master/znotesetup.sh
  sh znotesetup.sh  
 fi
printf "You havee successfully setup ZnoteAAC. Navigate to http://yourip and follow the instructions."


