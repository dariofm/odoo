
    echo "======== Caso a versão a versão seja odoo 10 ========"
    echo "============= Virtualenv 2.7 será criado ============"

    mkdir ~/src
    cd ~
    wget http://www.python.org/ftp/python/2.7.9/Python-2.7.9.tgz
    tar -zxvf Python-2.7.9.tgz
    cd Python-2.7.9
    sudo mkdir /odoopython

    sudo ./configure --prefix=/odoopython
    sudo make
    sudo make install

    cd ~/src
    wget  https://pypi.python.org/packages/d4/0c/9840c08189e030873387a73b90ada981885010dd9aea134d6de30cd24cb8/virtualenv-15.1.0.tar.gz#md5=44e19f4134906fe2d75124427dc9b716
    tar -zxvf virtualenv-15.1.0.tar.gz
    cd virtualenv-15.1.0/
    sudo /odoopython/bin/python setup.py install
    mkdir ~/odooenv27
    /odoopython/bin/virtualenv ~/odooenv27/ve -p /odoopython/bin/python2.7
    source ~/odooenv27/ve/bin/activate
    pip install --upgrade pip
    pip install --upgrade setuptools
    pip install Babel==1.3
    pip install Jinja2==2.7.3
    pip install Mako==1.0.1
    pip install MarkupSafe==0.23
    pip install Pillow==2.7.0
    pip install Python-Chart==1.39
    pip install PyYAML==3.11
    pip install Werkzeug==0.9.6
    pip install argparse==1.2.1
    pip install decorator==3.4.0
    pip install docutils==0.12
    pip install feedparser==5.1.3
    pip install gdata==2.0.18
    pip install gevent==1.0.2
    pip install greenlet==0.4.7
    pip install jcconv==0.2.3
    pip install lxml==3.4.1
    pip install mock==1.0.1
    pip install ofxparse==0.14
    pip install passlib==1.6.2
    pip install psutil==2.2.0
    pip install psycogreen==1.0
    pip install psycopg2==2.5.4
    pip install pyPdf==1.13
    pip install pydot==1.0.2
    pip install pyparsing==2.0.3
    pip install pyserial==2.7
    pip install python-dateutil==2.4.0
    pip install python-ldap==2.4.19
    pip install python-openid==2.2.5
    pip install pytz==2014.10
    pip install pyusb==1.0.0b2
    pip install qrcode==5.1
    pip install reportlab==3.1.44
    pip install requests==2.6.0
    pip install six==1.9.0
    pip install suds-jurko==0.6
    pip install vobject==0.6.6
    pip install wsgiref==0.1.2
    pip install XlsxWriter==0.7.7
    pip install xlwt==0.7.5
    pip install openpyxl==2.4.0-b1
    pip install boto==2.38.0
    pip install odoorpc
    pip install suds_requests
    pip install urllib3
    pip install pytrustnfe
    pip install python-boleto
    pip install python-cnab
    pip install wheel