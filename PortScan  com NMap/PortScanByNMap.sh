#!/bin/bash

# Nmap 
clear 

for ip in $(cat /home/suporte/Script/ip.txt)

do

nmap -sS -vv $ip | grep "Discovered open port" > /home/suporte/PortScan/$ip.txt 

done


