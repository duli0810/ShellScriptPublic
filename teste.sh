#!/bin/bash
#
echo ""
echo                            "################ Script - Update & Install CentOS Basic Tools ( Ferramentas Basicas ) - CentOs ################"
echo ""
echo                                                  "################ Autor: EDUARDO RODRIGUES ################"
echo ""
echo                                                   "################ Criado em: 14/05/2021 ################"
echo ""
echo ""
echo ""
#
echo "Acesse o Blog e veja o passo a passo: https://acesso8.blogspot.com/"
#
#
#
echo "### Update & Install CentOS Basic Tools ( Ferramentas Basicas ) - CentOs ###"
#
echo "# *** o comando " -y " serve para by-pass do solicitaçoes de Yes / No em install de pacotes/software ***"
#
echo"# Update CentOs"
#
yum update -y 
#
# Instalar o Pacote de Comandos de Rede ( net-tools )
#
#yum install net-tools -y
#
# Instalar Comandos de Rede traceroute
#
#yum install traceroute -y
