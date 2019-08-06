#!/bin/bash
#-------------------------------------
# Builds and install from source code
#-------------------------------------
cd /home/$(whoami)/git/qucs

doc_arg=""

if [ "$1" != "--install-docs" ]; then
    doc_arg="--disable-doc"
fi
./bootstrap
autoreconf --force --install
./configure --enable-maintainer-mode $doc_arg
make
sudo make install

echo ""
echo "Installation Complete!"
echo ":)"
