# Builds and install from source code
cd ~/git/qucs/qucs
./bootstrap

if [$1 = "--install-docs"]; then
    ./configure
else
    ./configure --disable-doc
fi

make
sudo make install
