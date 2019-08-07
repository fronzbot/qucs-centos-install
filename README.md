# QUCS on CentOS

This repo is just a script to help install [qucs](https://github.com/Qucs/qucs) and [qucs-s](https://ra3xdh.github.io) on CentOS.

## Usage

First, clone this repo into your home directory:

```bash
cd ~
git clone https://github.com/fronzbot/qucs-centos-install
```

Then, `cd` into the cloned repo directory:

```bash
cd qucs-centos-install
```

From here, you can simply run the following command to install all dependencies and then build and install QUCS from source:

```bash
sudo ./start.sh
```

By default, the documentation dependencies are not installed because they take FOREVER.  If you're a masochist you can use the following flag to install them (currently untested, so you've been warned):

```bash
sudo ./start.sh --install-docs
```

If you have any problems, please open an issue.  If you feel like this install script can be improved, feel free to submit a pull request!

## After Installation

To use QUCS you have two options:

- `qucs`: Standard QUCS installation with built-in `qucsator` simulation engine
- `qucs-s`: QUCS with SPICE capabilities using `ngspice` as the simulation engine

Using `qucs-s` creates a more familiar SPICE-like environement for those who come from a SPICE background.
