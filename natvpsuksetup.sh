apt-get -y update
apt-get -y install nano
apt-get -y install wget
apt-get -y install sudo
echo 'none /run tmpfs defaults,size=64M 0 0' >> /etc/fstab
mount -o remount /run
df -h /run
cd
sudo apt-get -y install openssh-server


