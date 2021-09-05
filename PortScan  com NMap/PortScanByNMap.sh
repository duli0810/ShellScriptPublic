#!/bin/bash

echo ""
echo                                              "################ Script - Script PortScan NMap ################"
echo ""
echo                                                  "################ Autor: EDUARDO RODRIGUES ################"
echo ""
echo                                                   "################ Criado em: 14/04/2021 ################"
echo ""
echo ""
echo ""
"

Acesse o Blog e veja o passo a passo: https://acesso8.blogspot.com/2021/05/portscan-automatizado-com-nmap.html
  
"

clear 

for ip in $(cat <Path do home do Usuario>/Script/ip.txt) # Informe a Path do home do Usuario Ex.: /root/Script ( para root ) ou /home/acesso8 ( para um não SuperUsuario )

do

nmap -sS -vv $ip | grep "Discovered open port" > <Path do home do Usuario>/Script/PortScan/$ip.txt # Informe a Path do home do Usuario Ex.: /root/Script ( para root ) ou /home/acesso8 ( para um não SuperUsuario )

done


