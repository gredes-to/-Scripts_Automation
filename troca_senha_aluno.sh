#! /bin/sh
### BEGIN INIT INFO
# IFTO - GREDES
# Provides:          CCM
# Documentation:     Paulo Vinicius Rodrigues Borges
# Short-Description: Change Password
### END INIT INFO

/usr/bin/expect -c "
#command wait
spawn p aluno
#change time connection
set timeout -1
#hold the command
expect "*UNIX:"
#sends the password change command
send -- "321mudar"\r
##change time connection
set timeout -1
#hold the command
expect "*UNIX:"
#sends the password change command
send -- "321mudar"\r
interact
"

