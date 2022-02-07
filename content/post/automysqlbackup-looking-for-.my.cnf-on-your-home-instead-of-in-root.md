---
title: "AUTOMySQLBackup: Looking for .my.cnf in your $HOME instead of in /root"
date: 2018-10-15T12:32:03+08:00
tags: [mysql, mariadb, automysqlbackup, config]
draft: false
---

```
root@rh:~# /usr/local/bin/automysqlbackup /etc/automysqlbackup/rh.conf
Parsed config file "/etc/automysqlbackup/automysqlbackup.conf"
 
grep: /home/icasimpan/.my.cnf: No such file or directory
grep: /home/icasimpan/.my.cnf: No such file or directory
# Checking for permissions to write to folders:
base folder /var/lib ... exists ... ok.
backup folder /var/lib/automysqlbackup ... exists ... writable? yes. Proceeding.
checking directory "/var/lib/automysqlbackup/daily" ... exists.
checking directory "/var/lib/automysqlbackup/weekly" ... exists.
checking directory "/var/lib/automysqlbackup/monthly" ... exists.
checking directory "/var/lib/automysqlbackup/latest" ... exists.
checking directory "/var/lib/automysqlbackup/tmp" ... exists.
checking directory "/var/lib/automysqlbackup/fullschema" ... exists.
checking directory "/var/lib/automysqlbackup/status" ... exists.
 
# Testing for installed programs
mysql ... found.
mysqldump ... found.
gzip ... found.
 
# Parsing databases ... Note: Parsed config file /etc/automysqlbackup/rh.conf.
Error: The mysql server is empty, i.e. no databases found. Check if something is wrong. Exiting.
 
###### WARNING ######
Errors reported during AutoMySQLBackup execution.. Backup failed
Error log below..
ERROR 1045 (28000): Access denied for user 'root'@'localhost' (using password: NO)
```

**Issue:** enviroment variable is still yours and not root's. since as you can see above, it's looking from your home directory. You can either do the following:
```
exit
sudo su -
```
or
```
export HOME=/root

```
