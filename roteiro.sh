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
sudo adduser --system --home=/opt/odoo --group odoo
echo -e "\n---- Instalando PostgreSQL Server ----"
sudo apt-get install postgresql -yls
sudo service postgresql restart
echo -e "\n---- Criando usuário "odoo" no PostgreSQL Server ----"
sudo -u postgres psql -e --command "CREATE USER odoo WITH SUPERUSER PASSWORD '1q2w3e4r'"

echo "==== Instalando dependências Odoo ===="
sudo apt-get install --no-install-recommends python-pip -y
sudo apt-get install --no-install-recommends libxml2-dev -y
sudo apt-get install --no-install-recommends libxslt-dev -y
sudo apt-get install --no-install-recommends libsasl2-dev -y
sudo apt-get install --no-install-recommends libldap2-dev -y
sudo apt-get install --no-install-recommends libpq-dev -y
sudo apt-get install --no-install-recommends libjpeg-dev -y
sudo apt-get install --no-install-recommends nodejs -y
sudo apt-get install --no-install-recommends npm -y
sudo apt-get install node-less -y
sudo npm install -g less
sudo ln -s /usr/bin/nodejs /usr/bin/node

echo "==== Instalando dependências da Localização Brasileira ===="
sudo apt-get install --no-install-recommends python-libxml2 -y
sudo apt-get install --no-install-recommends libxmlsec1-dev -y
sudo apt-get install --no-install-recommends python-openssl -y
sudo apt-get install --no-install-recommends python-cffi -y
sudo apt-get install --no-install-recommends libxmlsec1-opensslopenssl
echo "==== Instalando dependências do WKHTMLTOX ===="
sudo apt-get install --no-install-recommends zlib1g-dev -y
sudo apt-get install --no-install-recommends fontconfig -y
sudo apt-get install --no-install-recommends libfreetype6 -y
sudo apt-get install --no-install-recommends libx11-6 -y
sudo apt-get install --no-install-recommends libxext6 -y
sudo apt-get install --no-install-recommends libxrender1 -y
sudo apt-get install --no-install-recommends libjpeg-turbo8 -y

wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.1/wkhtmltox-0.12.1_linux-trusty-amd64.deb -P ~/
sudo dpkg -i ~/wkhtmltox-0.12.1_linux-trusty-amd64.deb






