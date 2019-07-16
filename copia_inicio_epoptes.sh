#! /bin/sh
### BEGIN INIT INFO
# IFTO - GREDES
# Provides:          CCM
# Documentation:     Lucas Coutinho de Almeida
# Short-Description: 
### END INIT INFO

#Is executed an loop, where is read the variable 'linha'
while read linha
do
	#The variable 'comando1' recives the content of '.config'
	#The variable 'comando2' recives the content of '.config/autostart'
	#The variable 'comando3' recives copy the content of 'visual.desktop' and '.config/autostart'
	#The variable 'comando4' recives the change owner recursively of variable '$linha' in '/home/$linha'
	comando1="mkdir /home/$linha/.config"
	comando2="mkdir /home/$linha/.config/autostart"
	comando3="cp /home/aluno/visual.desktop /home/$linha/.config/autostart"
	comando4="chown -R $linha /home/$linha"

	#Is executed another loop, where is read the variable 'ip'
	while read ip
	do
		#Print the value of variable '$linha'
		echo $linha

		#Print '10.101.0.' and of variable '$ip'
		echo 10.101.0.$ip

		#Print the value of '$comando1' and directs to /dev/tcp/10.101.0.$ip/3535
		#And pause to 0.5 seconds
		echo $comando1 > /dev/tcp/10.101.0.$ip/3535
		sleep 0.5

		#Print the value of '$comando2' and directs to /dev/tcp/10.101.0.$ip/3535
		#And pause to 0.5 seconds
		echo $comando2 > /dev/tcp/10.101.0.$ip/3535
		sleep 0.5

		#Print the value of '$comando3' and directs to /dev/tcp/10.101.0.$ip/3535
		#And pause to 0.5 seconds
		echo $comando3 > /dev/tcp/10.101.0.$ip/3535
		sleep 0.5

		#Print the value of '$comando4' and directs to /dev/tcp/10.101.0.$ip/3535
		#And pause to 0.5 seconds
		echo $comando4 > /dev/tcp/10.101.0.$ip/3535
		sleep 0.5

		#The loop is finalized and the entrace '$2' is directed to variable '$ip'
	done < $2

	#The loop is finalized and the entrace '$1' is directed to variable '$linha'
done < $1

