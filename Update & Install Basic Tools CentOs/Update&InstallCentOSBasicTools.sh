#!/bin/bash
echo ""
echo                            "################ Script - Update & Install CentOS Basic Tools ( Ferramentas Basicas ) - CentOs ################"
echo ""
echo                                                  "################ Autor: EDUARDO RODRIGUES ################"
echo ""
echo                                                   "################ Criado em: 14/05/2021 ################"
echo ""
echo ""
echo "
############################################################################
#                                                                          #
#  Acesse o Blog e veja o passo a passo: https://acesso8.blogspot.com/     #
#                                                                          #
############################################################################
"
echo ""
echo ""
echo "### Update & Install CentOS Basic Tools ( Ferramentas Basicas ) - CentOs ###"
echo ""
echo "*** o comando " -y " serve para by-pass do solicitaçoes de Yes / No em install de pacotes/software ***"
echo ""
echo "*** Update CentOs ***"
echo ""
yum update -y &&
echo ""
echo "***  Instalar o Pacote de Comandos de Rede ( net-tools ) ***"
echo ""
yum install net-tools -y &&
echo ""
echo "***  Instalar Comandos de Rede traceroute ***"
echo ""
yum install traceroute -y &&
echo ""
echo "***  Instalar Comandos de Rede Telnet ***"
echo ""
yum install telnet -y &&
echo ""
echo "***  Instalar Comandos de Rede tcpdump ***"
echo ""
yum install tcpdump -y &&
echo ""
echo "***  Instalando o Editor VIM no CentOs ***"
echo ""
yum install vim-enhanced -y &&
echo ""
echo "***  Utilitário para download ( wget )  e verificaçao de URL ( curl ) ***"
echo ""
yum install wget -y && yum install curl -y && yum install bind-utils -y && yum install bash-completion -y && yum install perl -y &&
echo ""
localectl set-locale LC_CTYPE=en_US.utf8 &&
echo ""
echo "*** instalando os compiladores necessários e compilar pacotes com dependências. ***"
echo ""
yum install rpm* gcc gpg* make autoconf rng-tools openssl-devel lzop lzo-devel pam-devel zlib-devel cmake -y &&
echo ""
echo "***  Reinicie o sistema: ***"
echo ""
echo " --> reboot "

