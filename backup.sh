#!/bin/bash

set -x

BACKUPPATH='/backup/'
if [ -e $BACKUPPATH ]; then
   echo "File '$BACKUPPATH' Exists"
  if [ -d $BACKUPPATH ]; then
     echo "File '$BACKUPPATH' is a directory"
     # Good, we can work with it.
  else
     echo "The File '$BACKUPPATH' is NOT a directory"
     # BAD, we canNOT work with it.
  fi
else
   echo "The File '$BACKUPPATH' Does Not Exist"
   mkdir -p $BACKUPPATH
fi
exit;


timenow=`date +%s`
backupfilename=/backup.${timenow}.tbz2

tar -cvjf $backupfilename /root /home /etc

# server names defined in remote `.ssh/config`.
for I in seti zike
do
  remotehost=$I
  rsync -avvi /root /home /etc /backup*  $remotehost:/backup/$remotehost

done

