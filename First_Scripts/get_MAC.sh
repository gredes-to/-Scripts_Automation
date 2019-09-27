#!/bin/bash
#------------------------------------------------------------------
#Program name:	 Get MAC
#Institution:    Federal Institute of Education, Science
#                and Technology of Tocantins
#Research Group: Research Group applied in Computer
#                Networks and Systems
#Leader:         Claudio de Castro Monteiro (CCM)
#Developer:      Lucas Coutinho de Almeida
#------------------------------------------------------------------
#Description:	 Get MAC of one computer from the network.
#------------------------------------------------------------------
#Examples for easier script execution:
#                1-Change permission of file:
#                $chmod +ax get_mac.sh or
#                $chmod 775 get_mac.sh
#
#                2-Execution ways:
#                $./get_mac.sh or
#                $. get_mac.sh or
#                $ bash get_mac.sh
#------------------------------------------------------------------
#Version:        v1.0 2018-06-18 Claudio de Castro Monteiro (CCM)
#
#                v1.1 2019-08-30 Lucas Coutinho de Almeida:
#                Documentation, echo requests and modification of 
#		 variables.
#------------------------------------------------------------------


#Script:

#Ask to write the server ip and server port
echo "Type server IP: "
read server_ip
echo "Type server port: "
read server_port

#Store hostname of network
name=`cat /etc/hostname`

#Store mac address 
mac=`ifconfig | grep ether`

#Print the value of $name in $server_port
#Wait 2 seconds 
echo $name > /dev/tcp/$server_ip/$server_port
sleep 2

#Print the value of $mac in $server_port
#Wait 2 seconds
echo $mac > /dev/tcp/$server_ip/$server_port
sleep 2

#Print === in $server_port
echo "===" > /dev/tcp/$server_ip/$server_port
