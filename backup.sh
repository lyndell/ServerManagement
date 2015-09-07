#!/bin/bash

set -x

timenow=`date +%s`
backupfilename=/backup.${timenow}.tbz2

tar -cvjf $backupfilename /root /home /etc

remotehost='lyndell@lyndell.rpmfiles.net:1979'
# server "zike" defined in remote `.ssh/config`.

rsync -avvi /root /home /etc /backup*  zike:/home/lyndell/rsync/LPIC/

