#! /bin/sh
### BEGIN INIT INFO
# IFTO - GREDES
# Provides:          CCM
# Documentation:     Lucas Coutinho de Almeida
# Short-Description: 
### END INIT INFO

#The first command is used to wireless network
#The second is grep, it is used to process text line by line, and prints any lines which match a specified pattern
#Third, is a command to count caracters, words and/or lines, and your parameter realizes: counts mutiple lines
#Fourth, less executes print content of file
#Finally, the result of previous command is directed to coco 101
iwconfig | grep IEEE|wc -l|less -1>coco 101

