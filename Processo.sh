wget  https://raw.githubusercontent.com/Yenthe666/InstallScript/10.0/odoo_install.sh

mkdir localizacao
cd localizacao
sudo git clone https://github.com/oca/account-fiscal-rule.git --branch 10.0 --depth 1
sudo git clone https://github.com/odoo-brazil/odoo-brazil-eletronic-documents.git --branch 10.0 --depth 1
sudo git clone https://github.com/OCA/server-tools --branch 10.0 --depth 1
cd ..

mkdir trust
cd trust
git clone https://github.com/Trust-Code/odoo-brasil.git --branch 10.0 --depth 1
git clone https://github.com/Trust-Code/trustcode-addons.git --branch 10.0 --depth 1
cd ..

mkdir dependencias
cd dependencias
git clone https://github.com/odoo-brazil/pyxmlsec --branch master
cd pyxmlsec
sudo python setup.py install