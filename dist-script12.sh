#! /bin/sh
### BEGIN INIT INFO
# IFTO - GREDES
# Provides:          CCM
# Documentation:     Lucas Coutinho de Almeida
# Short-Description: 
### END INIT INFO

#mkdir /home/ccm/Download/ccmOS

#The result of commands: ls -l, cut -c 47-100 is directs to temp
ls -l / | cut -c 47-100 > temp

#Is executed an loop, where is read the variable 'line'
while read line
do
	#Is created an directory in /home/ccm/Download/ccmOS/ with value of variable '$line'
	mkdir /home/ccm/Download/ccmOS/$line

	#Condition if true for '$line' is different to 'proc', 'sys', 'initrd.img', 'initrd.img.old', 'vmlinuz.img', 'vmlinuz.img.old'
	#Is executed an copy verbose and recursively of /$line/* /home/ccm/Download/ccmOS/$line
	if [ $line != "proc" ]
	then
		if [ $line != "sys" ]
		then
			if [ $line != "initrd.img" ]
			then
				if [ $line != "initrd.img.old" ]
				then
					if [ $line != "vmlinuz.img" ]
					then
						if [ $line != "vmlinuz.img.old" ]
						then
							cp -v -R /$line/* /home/ccm/Download/ccmOS/$line
						fi
					fi
				fi
			fi
		fi
	fi

	#This loop is finalized and the result of temp is saved to variable '$line'
done < temp

#The variable 'dirs'recives /dev /dev/pts /dev/shm /tmp
dirs=(/dev /dev/pts /dev/shm /tmp)

#Is verified in the loop the condition
for d in "${dirs[@]}";
do
	#Is verified what systems are mounted, in this case is ccmOS variable '$d'
    mount -o bind $d /home/ccm/Downloads/ccmOS$d
done

#Is verified what systems are mounted, in this case is ccmOS/proc
#Is verified what systems are mounted, in this case is ccmOS/sys
mount -t proc none /home/ccm/Downloads/ccmOS/proc
mount -t sysfs none /home/ccm/Downloads/ccmOS/sys


#Is created link of boot/initrd.img-3.19.0-39-generic initrd.img
ln -s boot/initrd.img-3.19.0-39-generic initrd.img

#Is created link of boot/initrd.img-3.19.0-37-generic initrd.img.old
ln -s boot/initrd.img-3.19.0-37-generic initrd.img.old

#Is created link of boot/vmlinuz-3.19.0-39-generic vmlinuz
ln -s boot/vmlinuz-3.19.0-39-generic vmlinuz

#Is created link of boot/vmlinuz-3.19.0-37-generic vmlinuz.old
ln -s boot/vmlinuz-3.19.0-37-generic vmlinuz.old
