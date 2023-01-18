apt-get -y update
apt-get -y install nano
apt-get -y install wget
apt-get -y install sudo
echo 'none /run tmpfs defaults,size=64M 0 0' >> /etc/fstab
mount -o remount /run
df -h /run
sudo adduser ympker
sudo adduser ympker sudo
su ympker
cd
mkdir -p ~/.ssh
echo test >> ~/.ssh/authorized_keys
cd .ssh
chmod -R go= ~/.ssh
sudo nano authorized_keys
sudo apt-get -y install openssh-server


