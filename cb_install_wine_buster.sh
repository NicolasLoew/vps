#Script written by Ympker;  github.com/nicolasloew
#This script will help you to fully install Wine on your Chromebook or Linux. Just follow the instructions in the command line where applicable.
#System running on Debian 10 Buster. Tested on Acer Chromebook 315-3HT. It follows the recommendations on
#https://wiki.winehq.org/Debian and also will install the libfaudio0  packages which are required to run Wine without problems.
#You must be root or sudo user to run this script. Run at your own risk. 
sudo apt-get -y update #update system
sudo dpkg --add-architecture i386 #enable 32bit packages
wget https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Debian_10/i386/libfaudio0_20.01-0~buster_i386.deb #downloads libfaudio0 32bit from https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Debian_10/i386/
sudo dpkg -i libfaudio0_20.01-0~buster_i386.deb #installs libfaudio0 i386
wget https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Debian_10/amd64/libfaudio0_20.01-0~buster_amd64.deb #download libfaudio0 64bit
sudo dpkg -i libfaudio0_20.01-0~buster_amd64.deb #installs libfaudio0 amd64
wget -nc https://dl.winehq.org/wine-builds/winehq.key #download  and install wine key
sudo apt-key add winehq.key
echo "deb https://dl.winehq.org/wine-builds/debian/ buster main" | sudo tee -a /etc/apt/sources.list #add wine repository to sources list
sudo apt update #update
sudo apt install --install-recommends winehq-stable #install winehq stable branch
#If apt complains about missing dependencies, install them, then repeat the last two steps (update and install).
#Done
wine --version #should now display wine version

