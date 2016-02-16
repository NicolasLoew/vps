#!bin/bash
printf "Installing Manager.."
#Creating command folder
cd 
mkdir ~/bin
#Installing git
sudo apt-get -y install git
cd ~/bin
#Fetching scripts
sudo git clone https://github.com/NicolasLoew/manager.git
#Moving files to ~/bin
cd manager
mv * ../
#Giving files permission
cd 
chmod -R 777 ~/bin
#Adding in bashrc "export PATH=$PATH:~/bin"
#Then run "source ~./bashrc"
printf "Add to ~./bashrc and then run source ~./bashrc"

