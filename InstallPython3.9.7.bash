#!/bin/bash

yum install epel-release -y

yum install python-pip -y

yum install python3-pip -y

yum groupinstall 'development tools' -y

yum install openssl-devel bzip2-devel libffi-devel -y 

cd /opt

wget https://www.python.org/ftp/python/3.9.7/Python-3.9.7.tgz

tar xzf Python-3.9.7.tgz

cd Python-3.9.7

./configure --enable-optimizations

make altinstall

python3.9 -m pip install --upgrade pip