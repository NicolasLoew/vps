#!/bin/bash
cd /var/www/html
#Setting up ZnoteAAC
sudo apt-get install php5
sudo apt-get install php5-curl
git clone https://github.com/Znote/ZnoteAAC.git
cd ZnoteAAC
#Moving ZnoteAAC to html
mv * ../
sudo /etc/init.d/apache2 restart
