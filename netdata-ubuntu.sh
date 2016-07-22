apt-get -y update
apt-get -y upgrade
apt-get -y install curl
curl -Ss 'https://raw.githubusercontent.com/firehol/netdata-demo-site/master/install-required-packages.sh' >/tmp/kickstart.sh && bash /tmp/kickstart.sh netdata
apt-get -y install curl jq nodejs
git clone https://github.com/firehol/netdata.git --depth=1
cd netdata
chmod +x netdata-installer.sh
./netdata-installer.sh
echo "making netdata start at boot"
killall netdata
cp system/netdata.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable netdata
service netdata start
echo "Done. Go to yourip:19999"
