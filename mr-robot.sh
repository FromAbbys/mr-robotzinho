echo -e "Autor: Vinicius Angelo Poci\nDesc: Esse robo ira fazer coisas que voce ira gostar" | boxes -d cat


echo
echo 
echo 
echo 


function conectividade(){
	NUMERO=$(((RANDOM % 4 ) + 1))
       	echo "Obrigado por confiar em mim"
	echo
	echo "Digite o IP ou a URL do host que voce deseja testar a conectividade"
	echo
	read ip
	if [ $NUMERO -eq 1 ] 
	then
		echo "Iremos comeÃ§ar o teste...."
		ping -c 5 $ip
		echo "Agora me diga voce, esta satisfeito? Responda com sim ou nao."
		read pergunta
		if [ $pergunta == 'sim' ]
		then
			echo "Fico feliz que tenha entregado um bom trabalho"
		else
			echo "Desculpe-me, irei melhorar"
		fi
	elif [ $NUMERO -eq 2 ]
	then
		echo "Preparado para o que vem a seguir?"
		ping -c 5 $ip
		echo "Acho que terminamos por aqui ;)"
	elif [ $NUMERO -eq 3 ]
	then
		echo "Podemos iniciar o teste? responda com sim ou nao apenas"
		read decisao
		if [ $decisao == 'sim' ] 
		then
			echo "Ok, vamos comecar em alguns instantes"
			sleep 1s
			ping -c 5 $ip
			echo
			echo "Pronto terminamos por aqui"
		fi
	elif [ $NUMERO -eq 4 ]
	then
		echo "Ola, me chamo Elliot e irei te atender hoje."
		echo
		echo "Iremos fazer o teste para o host $ip ok? so me de um minuto para ajeitar as coisas"
		ping -c 5 $ip 
		echo
		echo "Pronto, terminamos espero que esteja satisfeito com o resultado"
	fi
}


function namoro(){
		echo "Eu nÃ£o namoro, eu nao posso fazer isso, estou preso nesse computador" | boxes -d c
}

function vulnerabilidade(){
	echo "Tome cuidado com o que vai fazer com esse programa, lembrando que eu nÃ£o me responsabilizo por qualquer crime que venha a ser cometido"
	echo
	echo "Digite o IP do alvo: "
	read host
	echo "Aguarde um momento enquanto o portscan Ã© feito..."
	nmap -sV $host
	echo
	echo "Espero que voce tenha cuidado, lemre-se com grandes poderes vem grandes responsabilidades"
}


function versao(){

	echo "Aqui iremos ver se existe alguma atualizaÃ§Ã£o pendente no seu sistema, Ã© provavel que voce precise executar essa funcao como ROOT"
	COMANDO=`apt update | grep "upgradable"`
	if [[  $COMANDO  == "" ]]
	then
		echo "Aparentemente voce esta com tudo na versao mais recente"
	else
		echo "Pelo meus calculos voce precisa fazer algumas atualizacoes, porem nao se preocupe, eu te ajudo com isso"
		echo
		echo "Voce deseja fazer as atualizacoes necessarias AGORA? responda com sim ou nao"
		read decisao
		if [ $decisao == 'sim' ] 
		then
			echo "Ok iremos comecar o processo de atualizacao..."
			apt upgrade -y
			echo
			echo "Ok terminamos a atualizacao."
		else
			echo "Ok, caso mude de ideia estarei sempre aqui por voce"
		fi
	fi
}

function criador(){

	NUMERADOR=$(((RANDOM % 4) + 1))
	echo $NUMERADOR
       			
	if [ $NUMERADOR -eq 1 ]
	then

		echo "Meu criador se chama Vinicius Angelo Poci com seu identificador de RM 93914, espero que voce nao tente machuca-lo"
	elif [ $NUMERADOR -eq 2 ]
	then
		echo "Meu criador nÃ£o se encontra no momento, por favor atenda as espectativas da demanda de trabalho, pera isso nao faz sentido, de qualquer forma seu nome Ã© Vinicius Angelo Poci e seu identificador Ã© RM 93914"
	elif [ $NUMERADOR -eq 3 ]
	then
		echo "Meu criador Ã© apenas um ser humano fragil chamado Vinicius Angelo Poci com um identificador RM 93914"
	else
		echo -e "Vinicius Angelo Poci\nRM 93914"
	fi
}


function hora(){
	echo "Muito bem entao o senhor esta sem relogio e quer saber a hora? tudo bem eu posso te ajudar com isso..."
	data=$(date | cut -d " " -f5 | cut -d ":" -f1 )
	
	if [[ "$data" -gt 06 && "$date" -lt 12 ]]
	then
		echo "Bom dia flor do dia, agora sÃ£o $(date | cut -d " " -f5) da manha :)"
	elif [[ "$data" -ge 12 && "$data" -le 18 ]]
	then
		echo "Boa tarde dorminhoco, agora sao $(date | cut -d " " -f5) da tarde :D"
	elif [[ "$data" -ge 19 && "$data" -le 05 ]]
	then
		echo "Boa noite amigo da madrugada e da noite, agora sao $(date | cut -d " " -f5) da noite :o"
	fi

}


function servicos(){

	echo "Agora iremos verificar quais servicos estao disponiveis na maquina, aguarde um momento"
	sleep 2s
	echo "......"
	ss -atun
	echo
	echo "QUANTOS SERVICOS"
}

function privilege_escalation(){
	echo
	echo "############################################"
	echo "#              SUIDS BITS                  #"
	echo "############################################"
	find / -perm -4000 2>/dev/null
	echo
	echo "-=-=-=-=-=-=-=-=-=-=--=--=--=-=-=-=-=-=-=-=-"
	echo
	echo "############################################"
	echo "#              CRONTAB                     #"
	echo "############################################"
	cat /etc/crontab
	echo
	echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
	echo
	echo "############################################"
	echo "#              CAPABILITIES                #"
	echo "############################################"
	getcap -r / 2>/dev/null
	echo
	echo "-=-=-=-=-=-=-=-=-=-=-=-=--=-=-=-=-=-=-=-=-=-"
	echo
	echo "############################################"
	echo "#                PATH                      #"
	echo "############################################"
	echo $PATH
	echo
	echo "-=-=--=-=-=-=-=-=-=--=--=-=---=-=-=-=-=-=-=-"
	echo
	echo "############################################"
	echo "#                NFS                       #"
	echo "############################################"
	cat /etc/exports
	echo
	echo "-=-=--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
	echo
	echo "############################################"
	echo "#               KERNEL VERSION             #"
	echo "############################################"
	uname -r
	echo
	echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
}

function adivinhacao(){
	echo "Muito bem, aqui iremos fazer um joguinho, eu escolho um numero de 1 a 10 e voce tenta acertar"
	echo "O que acha? quer jogar? RESPONDA sim ou nao:"
	echo
	read escolha
	if [ $escolha == 'sim' ] 
	then
		echo "Ok irei escolher meu numero agora...."
		numero_pc=$(((RANDOM%10)+1))
		tentativa=0
		while true
		do
			read usuario
			if [ $usuario -ne $numero_pc ]
			then
				echo "Voce colocou o numero errado"
				let tentativa++
			else
				echo "Parabens voce ganhou em: "
				let tentativa++
				echo "$tentativa tentativas"
				exit 0
			fi
		done
	elif [ $escolha == "nao" ]
	then
		echo "Tudo bem a gente joga numa proxima vez"
	else:
		echo "Apenas sim ou nao, por favor"
	
	fi

}

function tabuada(){
	echo "aqui um pequeno servico de tabuada...."
	echo
	echo "Para comecar selecione primeiro um numero para ver sua tabuada, lembrando que ira ir de 1 a 10"
	echo "Seu numero Ã©: "
	read numero
	for X in 1 2 3 4 5 6 7 8 9 10
	do
	echo "$numero X $X = $[$numero * $X]"
	done
	

}

###############################################################################################################################


case ${@: -1} in
	help|HELP|ajuda)
		echo 
		
		echo "Hello friend, that's lame maybe i should give you a name...."
		echo "Epa robo errado, desculpe-me forÃ§a do habito, me parece que voce pediu ajuda, bom Ã© isso que irei fazer"
		echo "Bom temos algumas funÃ§Ãµes, voce pode testa-las como quiser POREM existe algumas regras de funcionamento"
		echo
		echo "Esse programa trabalha com PALAVRAS CHAVES. por favor deixe a palavra chave como o ULTIMO argumento que voce der para cada comando, se nao eu posso me perder, e voce nao vai gostar de me ver perdido."
		echo "Exemplo: eu preciso de HELP;;; note que a palavra chave FICOU EM ULTIMO, keep that in mind"
		echo
		echo "A VARIAVEL DO COMANDO VOCE NAO PRECISA DEIXAR NOS ARGUMENTOS, LOGO APOS VOCE ESCOLHER UMA OPCAO IRA ACONTECERUM PEDIDO DE INPUT PARA VOCE"
		echo "EXEMPLO: UM INPUT SERA SOLOCITADO, POR EXEMPLO, UM IP PARA PROSSEGUIR COM A FUNCAO"
	;;
	conectividade|CONECTIVIDADE|conexao)
		conectividade
	;;
	criador|CRIADOR|lider)
		criador	
	;;



	namoro|NAMORO|romance)
		
		namoro


	;;

	vulnerabilidade|VULNERABILIDADE|fragilidade)
		
		vulnerabilidade

	;;
	atualizacao|ATUALIZACAO|update)
		versao
	;;
	data|DATA|TEMPO|tempo)
		hora
	;;
	servicos|SERVICOS|SERVICES|services)
		servicos
	;;
	pe|PE|privilege_escalation)
		echo "Aguarde um momento iremos fazer uma varredura no computador sobre possiveis vetores de um PE...."
		sleep 2s
		privilege_escalation
		echo 
		echo "Com grandes poderes vem grandes responsabilidades"
	;;
	jogo|JOGO|adivinhacao)
		adivinhacao
	;;
	tabuada|TABUADA|multiplicacao)
		tabuada
	;;	
	*)


		echo -e "Ola meu nome Ã© Elliot, prazer em te conhecer.\nEu tenho uma sugestao para voce caro viajante, irei deixar ela abaixo por favor fique atendo\n\nUtilize Apenas:\n\nhelp|HELP|ajuda\n\nconectividade|CONECTIVIDADE|conexao\n\ncriador|CRIADOR|lider\n\njogo|JOGO|adivinhacao\n\ntabuada|TABUADA|multiplicacao\n\npe|PE|privilege_escalation\n\ndate|DATA|tempo|TEMPO\n\natualizacao|ATUALIZACAO|update\n\nvulnerabilidade|VULNERABILIDADE|fragilidade\n\nnamoro|NAMORO|romance"| boxes -d parchment
		echo 
esac
