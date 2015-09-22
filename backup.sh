#!/bin/bash

set -x

timenow=`date +%s`
backupfilename=/backup.${timenow}.tbz2

tar -cvjf $backupfilename /root /home /etc

# server names defined in remote `.ssh/config`.
for I in seti zike
do
  remotehost=$I
  rsync -avvi /root /home /etc /backup*  $remotehost:/backup/$remotehost

done

