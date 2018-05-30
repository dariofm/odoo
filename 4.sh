mkdir localizacao

cd localizacao

git clone https://github.com/oca/account-fiscal-rule.git --branch 10.0 --depth 1
git clone https://github.com/odoo-brazil/odoo-brazil-eletronic-documents.git --branch 10.0 --depth 1
git clone https://github.com/OCA/server-tools --branch 10.0 --depth 1

cd ..

mkdir trust

cd trust

git clone https://github.com/Trust-Code/odoo-brasil.git --branch 10.0 --depth 1
git clone https://github.com/Trust-Code/trustcode-addons.git --branch 10.0 --depth 1


