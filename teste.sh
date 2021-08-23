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
echo "***Instalando Comandos traceroute***"
yum install traceroute -y &&
echo ""
echo "***  Instalar Comandos de Rede Telnet ***"
echo ""
yum install telnet -y
echo ""
