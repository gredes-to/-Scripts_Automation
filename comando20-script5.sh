#! /bin/sh
### BEGIN INIT INFO
# IFTO - GREDES
# Provides:          CCM
# Documentation:     Lucas Coutinho de Almeida
# Short-Description: 
### END INIT INFO

#Kill with force
#List all the process that is running
#The command grep, search for name: serv_novo
#And final command executes and shows the number of characters in the file
kill -9 `ps waux | grep serv_novo | cut -c 10-15`