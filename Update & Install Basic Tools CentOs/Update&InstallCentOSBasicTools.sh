#!/bin/bash

echo ""
echo                            "################ Script - Update & Install Basic tools ( Ferramentas Basicas ) - CentOs ################"
echo ""
echo                                                  "################ Autor: EDUARDO RODRIGUES ################"
echo ""
echo                                                   "################ Criado em: 14/05/2021 ################"
echo ""
echo ""
echo ""
"
Acesse o Blog e veja o passo a passo: https://acesso8.blogspot.com/
  
"

### Update & Install Basic tools ( Ferramentas Basicas ) - CentOs ###

# *** o comando " -y " serve para by-pass do solicitaçoes de Yes / No em install de pacotes/software ***

# Update CentOs

yum update -y 

# Instalar o Pacote de Comandos de Rede ( net-tools )

yum install net-tools -y

# Instalar Comandos de Rede traceroute

yum install traceroute -y

# Instalar Comandos de Rede Telnet

yum install telnet -y

# Instalar Comandos de Rede tcpdump

yum install tcpdump -y

# Instalando o Editor VIM no CentOs 

yum install vim-enhanced -y 

# Utilitário para download ( wget )  e verificaçao de URL ( curl )

yum install wget curl bind-utils bash-completion perl -y

localectl set-locale LC_CTYPE=en_US.utf8

#instalando os compiladores necessários e compilar pacotes com dependências.

yum install rpm* gcc gpg* make autoconf rng-tools openssl-devel lzop lzo-devel pam-devel zlib-devel cmake -y

# Reinicie o sistema: 

reboot

