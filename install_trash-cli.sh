#!/bin/bash

set -x


function installTrash {
  yum install python python-setuptools
  easy_install trash-cli

<<Install

  ## Installation (the easy way)

  easy_install trash-cli


  ## Install from sources

  ### System-wide installation:

  git clone https://github.com/andreafrancia/trash-cli.git
  cd trash-cli
  sudo python setup.py install

  ### User-only installation:

  git clone https://github.com/andreafrancia/trash-cli.git
  cd trash-cli
  python setup.py install --user

Install

}
# installTrash 
