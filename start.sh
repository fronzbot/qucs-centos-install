#!/bin/bash
#--------------------------------
# Wrapper script to install QUCS
#--------------------------------

arg=""

if [ "$1" = "--install-docs" ]; then
    arg="$1"
fi 

# Wrapper script to install QUCS
echo "Installing Dependencies"
bash ./pkg-installer.sh $arg

echo "Downloading Source Code"
bash ./dl-source.sh

echo "Building and Installing QUCS"
bash ./build.sh $arg

echo "Installing QUCS-S"
bash ./qucs-spice-install.sh

echo ""
echo "Installation Complete! :)"
echo ""
echo "To run vanilla QUCS, use the command 'qucs'"
echo "To run spice-enabled QUCS, use the command 'qucs-s'"
echo ""
