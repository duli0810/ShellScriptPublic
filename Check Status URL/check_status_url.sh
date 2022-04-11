#!/usr/bin/env bash

########################## INFORMAÇOES ##########################################
#
#Nome do Script : check_status_url.sh
#Descriçao      : Verifica se a URL esta OK (200 / 301), caso contrario apresenta falha. 
#Autor          : Eduardo Rodrigues da Silva
#Email          : edu0810@gmail.com
#Equipe         : 
#versao         : 1.0
#Complemento    : 
#                  
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

###################### DEFININDO MESSAGEM DE HELP SCRIPT ##############

help="
               ######## *** HELP SCRIPT *** ######## 
$IPurple
                          *** CHECK URL *** 
$NC
$IYellow
        Estrutura: ./checkurl.sh < url > $NC

        Exemplos:
                ./checkurl.sh globo.com
                ./checkurl.sh https://globo.com      
                
        $IGreen Verifica se a URL esta OK (200 / 301), caso contrario apresenta falha. $NC                 
"

###################### DECLARANDO VARIAVEL ############################

url=$1

############################# CHECK URL ###############################
 
Result()

{
check=$(curl -s -I $url | grep "HTTP" | cut -d " " -f 2)

    #status=$(echo $check | grep "HTTP" | cut -d " " -f 2)

    if [[ $check -eq "200" || $check -eq "301" ]]
        then
        
        echo -e "\n $url => STATUS $check $IGreen[SUCESSO]$NC \n"
        
        else

        echo -e "\n $url => STATUS $check $IRed[FAILED]$NC \n"

    fi
}

###################### MAIN ###########################################

if [ "$1" != "" ]
        then
        Result
        
else
        echo -e "$help"
fi          
