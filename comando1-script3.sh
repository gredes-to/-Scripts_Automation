#! /bin/sh
### BEGIN INIT INFO
# IFTO - GREDES
# Provides:          CCM
# Documentation:     Lucas Coutinho de Almeida
# Short-Description: 
### END INIT INFO

#Print line break and redirect for /var/log/comando1
echo "\n" >> /var/log/comando1

#The return of command date is saved in /var/log/comando1
date >> /var/log/comando1

#It is executed and an interaction of the command expect.
#After, the result is saved in /var/log/comando1 and /var/log/comando1a
/usr/bin/expect -c "
spawn net rpc join -S 10.101.0.251 -w LABREDES -U root
set timeout -1
expect "*password:"
send 123456\r
interact
" >> /var/log/comando1 2>> /var/log/comando1a

#Restart the samba-ad-dc and winbind 
/etc/init.d/samba-ad-dc restart
/etc/init.d/winbind restart