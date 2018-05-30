#!/bin/bash

# © 2018 Thiago Macedo, ADAX Technology
# License AGPL-3.0 or later (http://www.gnu.org/licenses/agpl.html).

#--------------------------------------------------
# Atualizando Servidor
#--------------------------------------------------
echo -e "\n---- Atualizando Servidor ----"
sudo apt-get update
sudo apt-get upgrade -y
sudo locale-gen en_US en_US.UTF-8 pt_BR.UTF-8

#--------------------------------------------------
# Instalando PostgreSQL Server
#--------------------------------------------------
echo -e "\n---- Instalando PostgreSQL Server ----"
sudo apt-get install postgresql -y
sudo service postgresql restart
echo -e "\n---- Criando usuário "odoo" no PostgreSQL Server ----"
sudo -u postgres psql -e --command "CREATE USER odoo WITH SUPERUSER PASSWORD '1q2w3e4r'"
service postgresql restart

sudo apt-get install python-pip libxml2-dev libxslt-dev libevent-dev libsasl2-dev libldap2-dev libpq-dev libjpeg-dev nodejs npm


