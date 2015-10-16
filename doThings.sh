#!/bin/bash

set -x

function mkSSHkey {
  if [ ! -e ~/.ssh ]
  then
    mkdir ~/.ssh
  fi

  # Generate key
  ssh-keygen -q -t rsa -b 4096 -C `hostname` -N '' -f ~/.ssh/id_rsa

  # Display public key
  head ~/.ssh/id_rsa.pub
}

mkSSHkey

