#! /bin/sh
### BEGIN INIT INFO
# IFTO - GREDES
# Provides:          CCM
# Documentation:     Lucas Coutinho de Almeida
# Short-Description: 
### END INIT INFO

#Kill with force
#List all the process that is running
#The command grep, search for name using 'serv.sh'
#And final command executes and shows the number of characters selected of 10 to 15
kill -9 `ps waux | grep serv.sh | cut -c 10-15`