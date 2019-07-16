#! /bin/sh
### BEGIN INIT INFO
# IFTO - GREDES
# Provides:          CCM
# Documentation:     Lucas Coutinho de Almeida
# Required-Start:    $all
# Required-Stop:
# Default-Start:     2 3 4 5
# Default-Stop:
# Short-Description: Run /etc/rc.local if it exist
### END INIT INFO


#Verifica dentro da variávei 'PATH' a existência  dos seguintes diretórios
PATH=/sbin:/usr/sbin:/bin:/usr/bin

#Nessas duas linhas é executado o 'vars.sh' e o 'init-functions'
. /lib/init/vars.sh
. /lib/lsb/init-functions

#Inicia um método chamado 'do_start()'
do_start() {
	#Cria-se as variáveis: '$placa' e '$placa1' e retira as letras 'Eth', usando o comando 'grep'
        placa=`ifconfig | grep Eth | cut -d" " -f1 | head -1`
        placa1=`ifconfig | grep Eth | cut -d" " -f1 | tail -1`

	#Para o serviço de network-manager e encaminha a finalização do serviço para '/var/log/network-manager-log'
        service network-manager stop >> /var/log/network-manager-log

	#Desativa a '$placa1' e ativa a '$placa' de rede
        ifconfig $placa1 down
        ifconfig $placa up

	#Configura a interface de rede '$placa' usando o protocolo DHCP 
        dhclient $placa

	#Entra dentro do diretorio 'bin/comando1'
        /bin/comando1

	#Verifica se eh arquivo
        winbindd -F &
        nmbd -F &

	#Reinicia o 'samba-ad-rc'e o 'winbind'
        /etc/init.d/samba-ad-dc restart
        /etc/init.d/winbind restart
	
#/bin/serv.sh &

	#Executa alguns scripts mantendo o terminal livre para execucao de outros comandos
        /bin/serv_novo.sh &
        /bin/executa.sh &
	/bin/verifica_samba &
	
#/bin/troca_owner.sh &	
#/bin/visual
	
	#Entra dentro do diretorio 'bin/comando1'
        /bin/comando1

	#Executa o 'epoptes-client'
	epoptes-client &

	#Executa uma condicao onde é extraido o arquivo 'rc.local'
	if [ -x /etc/rc.local ]; then
	        [ "$VERBOSE" != no ] && log_begin_msg "Running local boot scripts (/etc/rc.local)"
		/etc/rc.local
		ES=$?
		[ "$VERBOSE" != no ] && log_end_msg $ES
		return $ES
	fi
}

#Caso variável 1 começar: reinicia, recarrega e força o recarregamento e caso isso aconteça
#É exibido uma mensagem de erro dizendo que a variável 1 nao é suportada
#Se tudo correr bem, ele apresenta: Uso: '$1'start|stop
#E finaliza o script
case "$1" in
    start)
	do_start
        ;;
    restart|reload|force-reload)
        echo "Error: argument '$1' not supported" >&2
        exit 3
        ;;
    stop)
        ;;
    *)
        echo "Usage: $0 start|stop" >&2
        exit 3
        ;;
esac

