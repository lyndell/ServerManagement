#!/bin/bash

set -x

function mkSSHkey {
  if [ ! -e ~/.ssh ]
  then
    mkdir ~/.ssh
  fi

  if [ -e ~/.ssh/id_rsa ]
  then
    echo "Key already exists, not re-created."
  else

    # Generate key
    ssh-keygen -q -t rsa -b 4096 -C `hostname` -N '' -f ~/.ssh/id_rsa

  fi

  # Display public key
  head ~/.ssh/id_rsa.pub
}

mkSSHkey

