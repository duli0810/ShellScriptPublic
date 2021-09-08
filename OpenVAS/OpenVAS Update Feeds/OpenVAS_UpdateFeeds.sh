#!/bin/bash
echo ""
echo                                               "################ Script - OpenVAS Update Feeds ################"
echo ""
echo                                                  "################ Autor: EDUARDO RODRIGUES ################"
echo ""
echo                                                   "################ Criado em: 08/09/2021 ################"
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
echo "No Debian, o comando deve ser executado como usuário _gvm.: Ex.: sudo runuser -u _gvm - greenbone-nvt-sync"
echo "Faça alteração no script, descomente os comandos do Bloco Distribuição Debian e comente os do Bloco Demais Distribuiçoes"
echo ""
# Distribuição Debian
#sudo runuser -u _gvm -- greenbone-nvt-sync --rsync
#sudo runuser -u _gvm -- greenbone-scapdata-sync --rsync
#sudo runuser -u _gvm -- greenbone-certdata-sync --rsync
echo ""
# Demais Distribuiçoes
sudo greenbone-nvt-sync
sudo greenbone-scapdata-sync
sudo greenbone-certdata-sync
