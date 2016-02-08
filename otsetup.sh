read -r -p "Do you want to install the webpanel? [Y/n]" response
 response=${response,,} # tolower
 if [[ $response =~ ^(yes|y| ) ]]; then
    wget https://raw.githubusercontent.com/NicolasLoew/vps/master/panelsetup.sh
    sh panelsetup.sh
 fi
read -r -p "Do you want to compile latest TFS? [Y/n]" response
 response=${response,,} # tolower
 if [[ $response =~ ^(yes|y| ) ]]; then
    wget https://raw.githubusercontent.com/NicolasLoew/vps/master/tfsauto.sh
    sh tfsauto.sh
 fi
 read -r -p "Do you want to install ZnoteAAC? [Y/n]" response
 response=${response,,} # tolower
 if [[ $response =~ ^(yes|y| ) ]]; then
  wget https://raw.githubusercontent.com/NicolasLoew/vps/master/znotesetup.sh
  sh znotesetup.sh  
 fi



