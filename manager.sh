#!bin/bash
printf "Installing Manager.."
#Installing git
sudo apt-get -y install git
#Fetching scripts
sudo git clone https://github.com/NicolasLoew/bin.git
#Giving files permission
cd 
chmod -R 777 ~/bin
#Adding in bashrc "export PATH=$PATH:~/bin"
#Then run "source ~./bashrc"
printf "Add to ~./bashrc and then run source ~./bashrc"
cd
echo 'export PATH=$PATH:~/bin' >>~/.bashrc
source ~/.bashrc
cd /etc/init.d
wget https://raw.githubusercontent.com/NicolasLoew/vps/master/managerdisplay.sh
chmod +x managerdisplay.sh
cd /etc/profile.d
wget https://raw.githubusercontent.com/NicolasLoew/vps/master/managerdisplay.sh
chmod +x managerdisplay.sh
cd /root
printf "Done."
