#sudo apt-get install openssh-server
sudo locale-gen en_US en_US.UTF-8 pt_BR.UTF-8 -y
sudo apt-get dist-upgrade

sudo adduser --system --home=/opt/odoo --group odoo

echo -e "\n---- Instalando PostgreSQL Server ----"
sudo apt-get install postgresql -y
sudo service postgresql restart
echo -e "\n---- Criando usuário "odoo" no PostgreSQL Server ----"
sudo -u postgres psql -e --command "CREATE USER odoo WITH SUPERUSER PASSWORD '123'"

exit

sudo apt-get install git -y
sudo apt-get install python-dev python-yaml python-feedparser python-geoip python-imaging python-pybabel python-unicodecsv wkhtmltopdf libxml2-dev libxmlsec1-dev python-argparse python-babel python-cups python-dateutil python-decorator python-docutils python-feedparser python-gdata python-gevent python-greenlet python-jinja2 python-libxslt1 python-lxml python-mako python-markupsafe python-mock python-openid python-passlib python-psutil python-psycopg2 python-pychart python-pydot python-pyparsing python-pypdf python-ldap python-yaml python-reportlab python-requests python-simplejson python-six python-tz python-unittest2 python-vatnumber python-vobject python-webdav python-werkzeug python-wsgiref python-xlwt python-zsi python-dev libpq-dev poppler-utils python-pdftools antiword
sudo apt-get install python-pip #Necessário para o PIP
sudo apt-get install python-setuptools #Para Python v3 (python3-setuptools)
sudo pip install pyserial==2.7
sudo pip install psycogreen==1.0
sudo pip install pyusb==1.0.0b1
sudo pip install qrcode==5.0.1
sudo pip install Pillow==2.5.1
sudo pip install boto==2.38.0
sudo pip install oerplib==0.8.4
sudo pip install jcconv==0.2.3
sudo pip install pytz==2014.4




