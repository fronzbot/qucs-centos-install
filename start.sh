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
