---
title: "Automysqlbackup: Cannot Use Root Credentials From MySQL CLI"
date: 2018-10-15T12:00:13+08:00
tags: [mysql, mariadb, automysqlbackup, root, credentials]
draft: false
---

```
[root@rh icasimpan]# /usr/local/bin/automysqlbackup /etc/automysqlbackup/rh.conf
Parsed config file "/etc/automysqlbackup/automysqlbackup.conf"
 
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
ERROR 1045 (28000): Access denied for user '"root"'@'localhost' (using password: YES)
```
**Solution**: Check the last line of the error message above. Notice that user is inside strange quotes.
```
'"root"'
```
In /root/.my.cnf:
```
[root@rh icasimpan]# cat /root/.my.cnf
[client]
user="root"
password="root"
```
Remove the double quotes and try again.
Per experience, it works most of the time.
