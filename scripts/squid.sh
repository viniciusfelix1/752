#!/bin/bash

apt update
apt install squid3 apache2-utils -y 1>/dev/null 2>&1

dpkg -l squid3 apache2-utils

systemctl stop squid3
cp /opt/proxy/squid.conf /etc/squid/squid.conf

echo "Criando listas..."
mkdir /etc/squid/acls/
echo "uol.com.br" > /etc/squid/acls/listanegra.list
echo "baixaki.com.br" >> /etc/squid/acls/listanegra.list
echo "172.16.100.205" > /etc/squid/acls/listavip.list

echo "Criando estrutura de diretório de cache..."
squid3 -z

echo "Ajustando configuração de autenticacao..."
sed -i '/auth_param/s/^#//g' /etc/squid/squid.conf
sed -i '/AUTH/s/^#//g' /etc/squid/squid.conf

echo "Criando usuario basico 'tux'"

if [ -f /etc/squid/.htpasswd ]; then
	echo "arquivo de usuarios ja existe"
 else
	htpasswd -c /etc/squid/.htpasswd tux 
fi

systemctl enable squid
systemctl start squid


