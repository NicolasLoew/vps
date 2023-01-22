read -r -p "Do you want to update system and install nano, wget and sudo and adjust fstab? [Y/n]" response
 response=${response,,} # tolower
 if [[ $response =~ ^(yes|y| ) ]]; then
     apt-get -y update
     apt-get -y install nano
     apt-get -y install wget
     apt-get -y install sudo
     echo 'none /run tmpfs defaults,size=64M 0 0' >> /etc/fstab
     mount -o remount /run
     df -h /run
     cd
     fi
     
     read -r -p "Do you want to adduser ympker? [Y/n]" response
 response=${response,,} # tolower
 if [[ $response =~ ^(yes|y| ) ]]; then
   sudo adduser ympker
   sudo adduser ympker sudo
   
    printf "Done. User Ympker was added to sudoers group"
     fi
 

read -r -p "Do you want to install OpenSSH Server? [Y/n]" response
 response=${response,,} # tolower
 if [[ $response =~ ^(yes|y| ) ]]; then
    sudo apt-get -y install openssh-server
    sudo systemctl enable ssh
    sudo systemctl start ssh
    sudo systemctl status ssh
    printf "You have successfully installed OpenSSH server. Remember to change SSH Port"
     fi

read -r -p "Do you want to restart SSH and SSHD? [Y/n]" response
 response=${response,,} # tolower
 if [[ $response =~ ^(yes|y| ) ]]; then
    
    sudo service ssh restart
    sudo service ssh status
    sudo service sshd restart
    sudo service sshd status
    printf "Done."
     fi
read -r -p "Do you want to add your SSH Key to user ympker? SWITCH TO user ympker before proceeding [Y/n]" response
 response=${response,,} # tolower
 if [[ $response =~ ^(yes|y| ) ]]; then
    cd
    mkdir -p ~/.ssh
    echo test >> ~/.ssh/authorized_keys
    chmod -R go= ~/.ssh
    cd .ssh
    sudo nano authorized_keys
    sudo service ssh restart
    sudo service sshd restart
    printf "Done. Public Key added."
     fi
     
     read -r -p "Do you want to edit SSHD config? [Y/n]" response
 response=${response,,} # tolower
 if [[ $response =~ ^(yes|y| ) ]]; then
   sudo nano /etc/ssh/sshd_config
   #change port
   #add 
   #PermitRootLogin no
   #MaxAuthTries 3
   #PubkeyAuthentication yes
   #PasswordAuthentication no
   #ChallengeResponseAuthentication no
   
    printf "Done."
     fi
      read -r -p "Do you want to restart SSH and SSHD? [Y/n]" response
 response=${response,,} # tolower
 if [[ $response =~ ^(yes|y| ) ]]; then
   sudo systemctl restart ssh
   service ssh restart
   sudo service sshd restart
   sudo service sshd status
   
    printf "Done."
     fi
     
   read -r -p "Do you want to purde Dropbear? [Y/n]" response
 response=${response,,} # tolower
 if [[ $response =~ ^(yes|y| ) ]]; then
   sudo apt-get -y purge dropbear
   sudo apt-get -y remove dropbear
   
   
    printf "Done. Dropbear has been removed."
     fi   

