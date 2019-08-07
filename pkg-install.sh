#!/bin/bash
#---------------------------------
# Installs pre-requisite packages
#---------------------------------
# centos equivalent of debian's build-essential *brute-force*
sudo yum -y groupinstall 'Development Tools'
sudo yum -y install qt qt-devel automake libtool gperf flex bison
sudo yum -y install libxml2 libxml2-devel zlib zlib-devel
sudo yum -y install libX11 libX11-devel

# Enable EPEL repo
sudo yum -y install --enablerepo=extras epel-release
sudo yum -y install cpanspec
sudo yum -y install "perl(XML::LibXML)"

sudo yum -y install gd gd-devel libXpm-devel perl-GD

# Needed for ngspice
sudo yum -y install libXaw libXaw-devel libXmu libXmu-devel libXext libXext-devel readline readline-devel fftw fftw-devel

if [ "$1" = "--install-docs" ]; then
    # Packages required for documentation install
    sudo yum -y install perl-Tk perl-Digest-MD5
    
    sudo yum -y install doxygen octave
    sudo yum -y install latex2html 
    sudo yum -y install transfig gnuplot graphviz
    sudo yum -y install ps2eps libpgf libpgf-devel tkinter python36-tkinter 
    
    # Download texlive
    bash ./get-tex.sh
    
    # tex live installation
    sudo perl ./texlive/install-tl
    sudo cp env/texlive.sh /etc/profile.d/texlive.sh
    sudo cp env/texlive.csh /etc/profile.d/texlive.csh
    source /etc/profile.d/texlive.sh
else
    echo "Skipping documentation installation"
fi
