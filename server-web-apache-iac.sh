#!/usr/bin/env bash
#-----------------------------------------------------
#  Arquivo:       linux-starup-config.bash
#  Descricao:     2° Projeto de IAC para configuração  
#                 de um servidor web 
#  Autor:         Mateus Mota
#-----------------------------------------------------
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