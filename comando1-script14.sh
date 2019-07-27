#! /bin/sh
### BEGIN INIT INFO
# IFTO - GREDES
# Provides:          CCM
# Documentation:     Lucas Coutinho de Almeida
# Short-Description: 
### END INIT INFO

#It is executing the command expect
#Start the process of interactive
#Asks the user how long the command should run, wait a password, 
#send a command and wait for the enter key, interect and the result
#is send to /var/log/comando1
/usr/bin/expect -c "
spawn net rpc join -S Taz -w LABREDES -U root
set timeout -1
expect "*password:"
send -- "deskjet692"\r
interact
" >> /var/log/comando1 2>> /var/log/comando1