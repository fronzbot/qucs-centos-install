#!/bin/bash
#-------------------------------------
# Run only to update installer on git
#-------------------------------------
wget mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
tar xvzf install-tl-unx.tar.gz --transform 's:^[^/]*:texlive:'
rm -rf install-tl-unx.tar.gz
