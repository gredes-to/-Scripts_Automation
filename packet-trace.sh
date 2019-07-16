#! /bin/sh
### BEGIN INIT INFO
# IFTO - GREDES
# Provides:          CCM
# Documentation:     Paulo Vinicius Rodrigues Borges
# Short-Description: Installation Packet-tracer
### END INIT INFO


 
#change a varial to the password used on the machine
senha=aluno
#downloading
wget http://www.labcisco.com.br/app/Cisco-PT-620.tar.gz

#extracting
tar -zxvf Cisco-PT-620.tar.gz

#install
echo "====================================================="
echo 'Por favor, entre na pasta com o seguinte comando "cd PacketTracer62Student" e execute o arquivo de instalacao "./install"'
echo "====================================================="




