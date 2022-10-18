#!/bin/bash


echo "ATUALIZANDO PACOTES E SISTEMA, AGUARDE..."
apt update -y
apt upgrade -y

echo "Atualização concluida"

echo "Instalando o Apache"

apt install apache2 unzip -y

echo "Instalacao concluida com sucesso"

echo "Baixando, copiando e atualizando site"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -P /tmp/

unzip main.zip

mv -R /tmp/linux-site-dio-main /var/www/html

echo "Reiniciando o Apache"
service apache2 restart

echo "##############################################"
echo "FAVOR TESTAR"
echo "##############################################"
echo "##############################################"
