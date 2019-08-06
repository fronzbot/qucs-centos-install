#!/bin/bash
#-----------------------
# Downloads source code
#-----------------------
if [ ! -d "/home/$(whoami)/git/qucs" ]; then
    mkdir -p /home/$(whoami)/git
else
    rm -rf /home/$(whoami)/git/qucs
fi
git clone git://git.code.sf.net/p/qucs/git ~/git/qucs
