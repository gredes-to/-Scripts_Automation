#! /bin/sh
### BEGIN INIT INFO
# IFTO - GREDES
# Provides:          CCM
# Documentation:     Paulo Vinicius Rodrigues Borges
# Short-Description: Installation Browser
### END INIT INFO

#Make dowalod in the google repository
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
#redirects the repository address to /ete/apt-souces.list.d/
echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
#Update package information for all configured fonts
apt-get update
#Install navegation version stable
apt-get install google-chrome-stable -y


