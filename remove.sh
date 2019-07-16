#! /bin/sh
### BEGIN INIT INFO
# IFTO - GREDES
# Provides:          CCM
# Documentation:     Paulo Vinicius Rodrigues Borges
# Short-Description: remove
### END INIT INF

#print on the remove screen
printf "Remover"

#check if you have a directory
declare DIRETORIO="/etc/srv_arq/"
if [ -d "$DIRETORIO" ]
then

    #if directory exists it will remove every directory recursively if the config
    printf "Diretorio '$DIRETORIO'  jah existe\n"
    rm -fr $DIRETORIO
fi

#force removal entire directory
rm -f /etc/rc.d/init.d/srv
#desktop

#
rm -f root:root /etc/xdg/autostart/srvp.desktop


#edit to start the main service
sudo nano /etc/rc.d/rc.local
