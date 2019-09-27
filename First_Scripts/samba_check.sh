#!/bin/bash
#------------------------------------------------------------------
#Program name:   Samba Check
#Institution:	 Federal Institute of Education, Science
#                and Technology of Tocantins
#Research Group: Applied Research Group in Computer
#                Networks and Systems
#Leader:	 Claudio de Castro Monteiro (CCM)
#Developer:	 Lucas Coutinho de Almeida
#------------------------------------------------------------------
#Description:	 Catch the value of users in the samba domain and
#		 if the number is less to 100 is executed
#		 login_samba_domain.
#------------------------------------------------------------------
#Examples for easier script execution:
#		 1-Change permission of file:
#		 $chmod +ax samba_check.sh or
#		 $chmod 775 samba_check.sh
#
#		 2-Execution ways:
#		 $./samba_check.sh or
#		 $. samba_check.sh or
#		 $ bash samba_check.sh
#------------------------------------------------------------------
#Version:	 v1.0 2018-06-18 Claudio de Castro Monteiro (CCM)
#
#                v1.1 2019-08-30 Lucas Coutinho de Almeida:
#                Documentation and modification of variables.
#------------------------------------------------------------------


#Script:

#Runs in infinite loop and background
while :
do

#	list_users store the value of users in the samba domain
	list_users=`wbinfo -u|wc -l`

#	If the value of list_users is less than 100 users,
#	execute join_samba_domain
	if [ $list_users -lt 100 ];
	then
		/bin/join_samba_domain
	fi

#	Wait 60 seconds
	sleep 60
done
