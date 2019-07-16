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
#Asks the user how long the command should run, wait a password, 
#send a command and wait for the enter key, interect and the result
#is send to /var/log/comando6
/usr/bin/expect -c "
spawn smbpasswd -a aluno 
set timeout -1
expect "*password:"
send -- "aluno"\r
set timeout -1
expect "*password:"
send -- "aluno"\r
interact
" >> /var/log/comando6 2>> /var/log/comando6