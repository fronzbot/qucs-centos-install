# QUCS on CentOS

This repo is just a script to help install [qucs](https://github.com/Qucs/qucs) on CentOS.

## Usage

Run `sudo ./start.sh`.  By default, documentation dependencies are not installed since they take a long time.  If you'd like to install them, run `sudo ./start.sh --install-docs`.  If you do so, during dependency installation you will be prompted to install texlive.  Please hit `i` and then `enter` to continue (this step will take a while)
