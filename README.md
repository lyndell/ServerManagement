README
------


## create user

username: l1spt
FrstName: Lyndell
lastName: 

### addAPIkey
### getAPIkey

## addSSHkey

## Server

### Order 
### schedule cancelation

### backup

4. [Run a local script remotely](http://linux.icydog.net/ssh/piping.php)

Say you have a little script that you want to run once on a remote machine. You could scp it, but then you'd have to log into the other machine and run the command -- that's three commands! This command will run a local file script.sh on the remote server and display any output locally:

```bash
$ ssh user@server 'bash -s' < script.sh
```


```bash
rsync -avvi /root /home /etc othersever:/backup/
```

### upload/configure


