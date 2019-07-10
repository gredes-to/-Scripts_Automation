#! /bin/sh
### BEGIN INIT INFO
# IFTO - GREDES
# Provides:          CCM
# Documentation:     Lucas Coutinho de Almeida
# Short-Description: Change owner
### END INIT INFO

#Is executed a infinite loop
while :
do
	#The result of command 'ls -l' is directed to '/tmp/lista_home'
	ls -l /home > /tmp/lista_home

	#Is executed a loop, where is read variable 'line'
	while read line
	do
		#The variable 'a' recives the result of command echo '$line' and cut -c 1-1
		a=`echo $line | cut -c 1-1`

		#Is verified if the variable '$a' is equal to letter 'd'
		if [ "$a" == "d" ]
		then

			#The variable 'b' recives the result of command echo '$line' and cut -d" " -f9
	        b=`echo $line | cut -d" " -f9`
#			echo $line
#			echo /home/$b

			#Is changed owner recursively the directory of the variable 'b': /home/$b
			chown -R $b /home/$b
		fi

		#The process is finalized and the result of '/tmp/lista_home' is directed to variable 'line'
		#And pause to 300 seconds
	done < /tmp/lista_home
	sleep 300
done

