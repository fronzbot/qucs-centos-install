#!/bin/bash
#-----------------
# Installs QUCS-S
#-----------------
# Install ngspice
if [ -d "./ngspice/ngspice-30" ]; then
    rm -rf ./ngspice/ngspice-30
fi
mkdir -p ./ngspice
cd ngspice
wget 'https://managedway.dl.sourceforge.net/project/ngspice/ng-spice-rework/30/ngspice-30.tar.gz'
tar -xzvf ngspice-30.tar.gz
rm ngspice-30.tar.gz
cd ngspice-30
./configure --with-x --with-readline=yes --disable-debug
make
sudo make install
echo "ngspice installation complete"

# Install qucs-s
sudo yum-config-manager --add-repo http://download.opensuse.org/repositories/home:/ra3xdh/CentOS_7/
sudo yum-config-manager --enable ra3xdh
sudo yum repolist alll
sudo yum -y install qucs-s --nogpgcheck

