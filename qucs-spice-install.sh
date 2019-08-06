#!/bin/bash
#-----------------
# Installs QUCS-S
#-----------------

sudo yum-config-manager --add-repo http://download.opensuse.org/repositories/home:/ra3xdh/CentOS_7/
sudo yum-config-manager --enable ra3xdh
sudo yum repolist alll
sudo yum -y install qucs-s --nogpgcheck

