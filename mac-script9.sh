#! /bin/sh
### BEGIN INIT INFO
# IFTO - GREDES
# Provides:          CCM
# Documentation:     Lucas Coutinho de Almeida
# Short-Description: 
### END INIT INFO

#This script executes an loop
#After, executes `pega_mac`
#And pauses for 5 seconds
while :
do
	/bin/pega_mac
	sleep 5
done