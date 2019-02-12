### Application Environment Setup Using /etc/profile.d/*
```
When a user logs in, environment variables are set from various places.  That includes /etc/profile (for all users).

Then all the files in the /etc/profile.d directory.

Then ~/.bash_profile, then ~/.bashrc.

/etc/profile.d/ is a good place to put your application specific setups.  For example, I always use SSH for CVS (cf. RSH).  So I use:
```
### user related ###
```
groups - will show all the attached groups
groups <<userName>> - will show all the attached groups

id -u  ----user id in hexa
id -g ----user grp in haxa
```
### sudo user
```
visudo - and just follow root user 
/etc/sudoers.d/<<user>>
and the <<user>> file inside /etc/sudoers.d/<<user>> path has to be update like below

Defaults env_keep += "ftp_proxy http_proxy https_proxy"
Defaults:<<user>> !requiretty
<<user>> ALL=(ALL) NOPASSWD: ALL

```

### chown (change owner)
```
chown -R username:groupname file/folder
```

### chmod
```
example - drwxr-xr-x
from the other example
d is for- folder/l is for symboliclink
and it has - owner-rwx, group- rx, other -rx

```
*chmod table

> Read (4)

> Write (2)

> Execute (1)




### pid ###
````
all the process being create in unix can be found on /run directory
the process file extensation is .pid
````

### network ###
 * ifconfig - give all ip details
 * netstat -tulpn - will show all the running port
 * ps -ef - show all the process id 

### search ###
 * grep --help
 * grep -r 'search string' . - will search the search string in the (.) dir or current directory
 
### other ###
 * nc -zvv localhost 27017 -  ping from command line
### size of the disk and folder 
 * du -shx * - will show all folder size in destination in GB/MB
 * df -h - will show the disk space
 * du -h -s  -will show the disk space used by files and directory
 * du -h | sort -h - will show the size of all the folder is sorting (more size folder will be on below)
 * du -sh * - will show the size in mb for all the folder inside root dir
 * du -sh foldeName - will show the size of the folder folderName
 * du -sh . - will show the size of the root dir
 * du -ks /var/lib/docker/* | sort -nr | head - will show the details of the size of traget folder
 
### copy(ssh,local) ###
 * scp -i keypairFile local_path_to_copy user@hostname:/path_to_copy_in_remote
 * scp -r source/path ssh user@url:path/to/copy

### start and stop script example ###
````
start script
-------------
export  JAVA_HOME=/home/ubuntu/software/jdk1.8.0_101;
export  JENKINS_HOME=/home/ubuntu/workspace/jenkins_home;
nohup  $JAVA_HOME/bin/java -jar /home/ubuntu/software/jenkins.war --httpPort=8081 & echo $! > jenkins_pid.txt

stop script
-------------
kill -9 $(cat jenkins_pid.txt);
rm -rf nohup.out;
rm -rf jenkins_pid.txt;
````

### unix folder and file management
```
chown robert file.txt - change the user for file file.txt
groups username - create a user group
chgrp webdev file.txt - change the group name of the file.tx

chown -R user:group folderName/ - this will change the owner of the target folder
```


### tar and untar
```
tar -xzvf <<file_folder_name>>.tgz  - untar the target folder
tar -zcvf <<target_folder>>.tgz <<source_folder>>

options
-z : Compress archive using gzip program
-c: Create archive
-v: Verbose i.e display progress while creating archive
-f: Archive File name

tar xf location/filename.tgz -C path/where/to/extract --strip-components=1

for more help - https://www.cyberciti.biz/faq/how-do-i-compress-a-whole-linux-or-unix-directory/
```

### exit code
```
example:  exit 1 or exit 0
Exit code 0        Success
Exit code 1        General errors, Miscellaneous errors, such as "divide by zero" and other impermissible operations
Exit code 2        Misuse of shell builtins (according to Bash documentation)        Example: empty_function() {}
```
### swap memory setup for tmp foler or other
```
mount -o remount,size=2G,noatime /tmp 
```

### check a http host and port is working or not
```
nc -zvv localhost 8081
```

### check linux machine details
```
uname -a
and
cat /etc/os-release
```
### networking
```
nslookup <<hostname>>
netstat -tunlp
lsof -i
```
