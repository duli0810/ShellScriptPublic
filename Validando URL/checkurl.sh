#!/bin/bash

########################## INFORMAÇOES ##########################################
#
#Nome do Script : checkurl.sh                                                                                           
#Descriçao      : Verifica URL em dominios validos                                                                                 
#Autor          : Eduardo Rodrigues da Silva       	                                               
#Email          : eduardo.rodrigues@g.globo
#Equipe         : Operaçao Dados
#versao         : 1.0
#Complemento    : Para execução correta do script é necessario instalar o Whois
#                                           
#################################################################################


# Setting High Intensity Colors
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White
NC="\033[0m"              # Reset Colors

###################### DECLARANDO VARIAVEL ############################

url=$1

checkdomain=$1

###################### DEFININDO MESSAGEM DE HELP SCRIPT ##############

help="
$IYellow *** NECESSARIO INSTALAR WHOIS ***  $NC


        Estrutura: ./checkurl <url>

        Exemplos:
                ./checkurl globo.com
                ./checkurl https://globo.com

"

###################### VALIDANDO VERACIDADE DO DOMINIO #################

  w="$(whois "$1" | egrep "Domain Name:|domain:")"

###################### ANALISANDO URL ##################################

check_url ()
{

if [ "$w" != "" ]
	then
 	curl -I "$url"
else
 	echo -e "$IYellow\nNão é um dominio valido $NC\n"
fi

}

###################### MAIN ###########################################

if [ "$1" != "" ]
        then
        check_url
else
        echo -e "$help"
fi

