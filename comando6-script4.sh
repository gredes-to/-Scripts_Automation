#! /bin/sh
### BEGIN INIT INFO
# IFTO - GREDES
# Provides:          CCM
# Documentation:     Lucas Coutinho de Almeida
# Short-Description: 
### END INIT INFO

#It is executed and an interaction of the command expect
#Is solicited an password and is sent to aluno, this happens twice 
#After, the result is saved in /var/log/comando6 2 and /var/log/comando6
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