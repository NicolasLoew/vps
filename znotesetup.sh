#!/bin/bash
sudo apt-get install php5
sudo apt-get install php5-curl
cd /var
cd www
cd html
#Setting up ZnoteAAC
git clone https://github.com/Znote/ZnoteAAC.git
cd ZnoteAAC
#Moving ZnoteAAC to html
mv * ../
cd /var/www/ZnoteAAC 
rm index.html
sudo /etc/init.d/apache2 restart
