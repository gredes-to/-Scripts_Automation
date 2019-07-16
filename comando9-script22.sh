#! /bin/sh
### BEGIN INIT INFO
# IFTO - GREDES
# Provides:          CCM
# Documentation:     Lucas Coutinho de Almeida
# Short-Description: 
### END INIT INFO

#It is executing the command expect
#Start the process of interactive
#Asks the user how long the command should run, wait a UNIX, 
#send a command and wait for the enter key, interect and the result
#Asks the user how long the command should run, wait a UNIX, 
#send a command and wait for the enter key, interect and the result
#is send to /var/log/comando9
/usr/bin/expect -c "
spawn /home/aluno/passwd aluno 
set timeout -1
expect "*UNIX:"
send -- $1\r
set timeout -1
expect "*UNIX:"
send -- $1\r
interact
" >> /var/log/comando9 2>> /var/log/comando9