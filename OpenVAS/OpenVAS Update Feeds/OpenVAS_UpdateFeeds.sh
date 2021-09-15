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
echo "No Debian, o comando deve ser executado como usuário _gvm.: sudo runuser -u _gvm - greenbone-nvt-sync"
echo "Faça alteração no script, descomente o comando no Bloco Distribuição Debian e comente o do Bloco Demais Distribuiçoes"
echo ""
# Distribuição Debian
#sudo runuser -u _gvm -- greenbone-nvt-sync --rsync
echo ""
# Demais Distribuiçoes
sudo greenbone-nvt-sync
sudo greenbone-scapdata-sync
sudo greenbone-certdata-sync
sudo gvm-feed-update
