#!/usr/bin/env bash

########################## INFORMAÇOES ##########################################
#
#Nome do Script : limpezalinux.sh
#Descriçao      : O script irá realizar limpeza basicas e rotineiras do linux Ubunto. 
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

###################### LIMPEZA LINUX ##############

#Limpeza do Linux 

echo "Limpeza Linux"

sudo rm -rf /home/$USER/.local/share/Trash/files/* #limpa todos os arquivos da lixeira 
echo ""
echo ""
echo "Limpando a pasta TMP"
sudo rm -rf /var/tmp/*
echo ""
echo ""
echo "Excluindo Cache do Sistema"
sudo apt-get clean -y
echo ""
echo ""
echo "Exclusão de programas obsoletos"
sudo apt-get autoremove -y
echo ""
echo ""
echo "Excluir Duplicidade de Arquivos"
sudo apt-get autoclean -y
echo ""
echo ""
echo "Reparando Atualizações Fragmentadas"
sudo dpkg --configure -a 
#clear
echo "Limpeza Concluída"
sleep 4
exit
