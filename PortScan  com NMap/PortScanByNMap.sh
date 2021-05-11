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

Acesse o Blog e veja o passo a passo: https://acesso8.blogspot.com/
  
"

clear 

for ip in $(cat /home/acesso8/Script/ip.txt)

do

nmap -sS -vv $ip | grep "Discovered open port" > /home/acesso8/PortScan/$ip.txt 

done


