README
------


### backup

4. [Run a local script remotely](http://linux.icydog.net/ssh/piping.php)

Say you have a little script that you want to run once on a remote machine. You could scp it, but then you'd have to log into the other machine and run the command -- that's three commands! This command will run a local file script.sh on the remote server and display any output locally:

    tech@wrkstn ServerManagement $ ssh lpic 'bash -s' < backup.sh 

Tar-zip the directories `/root /home /etc` to a file in the format of `/backup.${timenow}.tbz2`.

rsync the same, tar-zip file too, to remote server.

