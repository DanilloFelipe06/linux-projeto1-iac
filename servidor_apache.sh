#!/bin/bash 

echo "Atualizando o servidor"
apt-get update
apt-get update -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio
cp -R * /var/www/html

