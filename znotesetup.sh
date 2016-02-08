#!/bin/bash
cd /var/www/html
#Setting up ZnoteAAC
apt-get install php5
apt-get install php5-curl
git clone https://github.com/Znote/ZnoteAAC.git
cd ZnoteAAC
/etc/init.d/apache2 restart
#Moving ZnoteAAC to html
mv * ../
