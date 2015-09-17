#!/bin/bash -x -u -e

# rsync old (here) to new (there).

rsync -avvi /root /home /etc /backup*  zike:/home/



