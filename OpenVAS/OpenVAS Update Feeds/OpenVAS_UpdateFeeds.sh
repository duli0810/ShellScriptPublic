#!/bin/bash

# No Debian, o comando deve ser executado como usuário _gvm.: sudo runuser -u _gvm - greenbone-nvt-sync

sudo greenbone-nvt-sync
sudo greenbone-scapdata-sync
sudo greenbone-certdata-sync
