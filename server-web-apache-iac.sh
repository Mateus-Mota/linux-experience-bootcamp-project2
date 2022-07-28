#!/usr/bin/env bash

echo "Instalando dependências..."
sudo apt update
sudo apt install apache2 unzip-y

echo "Configurando o servidor..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
sudo systemctl enable apache2