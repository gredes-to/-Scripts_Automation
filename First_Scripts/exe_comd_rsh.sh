#!/bin/bash
#------------------------------------------------------------------
#Program name:	 Execute Commands Remote
#Institution:    Federal Institute of Education, Science
#                and Technology of Tocantins
#Research Group: Applied Research Group in Computer
#                Networks and Systems
#Leader:         Claudio de Castro Monteiro (CCM)
#Developer:      Lucas Coutinho de Almeida
#------------------------------------------------------------------
#Description:	 Execute commands remotely for another computer.
#------------------------------------------------------------------
#Examples for easier script execution:
#                1-Change permission of file:
#                $chmod +ax run_commands_remote.sh or
#                $chmod 775 run_commands_remote.sh
#
#                2-Execution ways:
#                $./run_commands_remote.sh or
#                $. run_commands_remote.sh or
#                $ bash run_commands_remote.sh
#------------------------------------------------------------------
#Version:        v1.0 2018-06-18 Claudio de Castro Monteiro (CCM)
#
#                v1.1 2019-08-30 Lucas Coutinho de Almeida:
#                Documentation and modification of 
#		 variables.
#------------------------------------------------------------------


#Script:

#Ask server IP and server port
echo "Type server IP: "
read server_ip
echo "Type server port: "
read server_port

#Runs in infinite loop and background
while :
do

#	Print the value of server IP
        echo $server_ip

#	It's sent to folder of server
        echo $1 > /dev/tcp/$server_ip/$server_port

#	Wait 1 second
        sleep 1

#It's used as input  
done < $2
