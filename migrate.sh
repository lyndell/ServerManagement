#!/bin/bash -x -u -e

<<HOWITWORKS

# Log into new server. 

Have Public key in SoftLayer portal to
autoprovision with keys preinstalled.  

## SL SSH key

A key dedicated for logging into the SoftLayer servers.  Public key
loaded into the server automatically from SoftLayer portal SSH key
management.

### Generated with 

  ssh-keygen  -f SLserver.key -C "SoftLayer migration" -t rsa -b 4096 -P '' 

tech@wrkstn ServerManagement $ 
tech@wrkstn ServerManagement $ ssh-keygen  -f SLserver.key -C "SoftLayer migration" -t rsa -b 4096 -P '' > SLserver.txt
tech@wrkstn ServerManagement $ l SL*
-rw------- 1 3.2K Sep 17 22:23 SLserver.key
-rw-r--r-- 1  745 Sep 17 22:23 SLserver.key.pub
-rw-rw-r-- 1  486 Sep 17 22:23 SLserver.txt
tech@wrkstn ServerManagement $ 
tech@wrkstn ServerManagement $ 


# Copy files

rsync old (there) to new (here).


rsync ADVANCED USAGE
       The syntax for requesting multiple files from  a  remote  host  is
       done  by  specifying additional remote-host args in the same style
       as the first, or with the hostname  omitted.   For  instance,  all
       these work:

              rsync -av host:file1 :file2 host:file{3,4} /dest/
              rsync   -av   host::modname/file{1,2}   host::modname/file3
              /dest/
              rsync -av host::modname/file1 ::modname/file{3,4}



# TODO

- [ ] Idea: download script fron github for autoconfiguration.

HOWITWORKS

remotehost=$1 
cat exclude-file.txt<<EXCLUDE
/etc/sysconfig/network-scripts
EXCLUDE


# rsync -av host:file1 :file2 host:file{3,4} /dest/
rsync -avvi  --exclude-from=FILE  ${remotehost}:/root :/home :/etc :/backup*  /
# - [ ] TODO: exclude files that will conflict on new server, or break new
# server.



