---
title: "Automysqlbackup Fails Due to Issues in Information_schema"
date: 2018-10-15T12:11:14+08:00
tags: [mysql, mariadb, automysqlbackup, failure, information_schema]
draft: false
---

In a machine 'rh', tested automysqlbackup cron job if it would work and got the issue below:
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
 
# Parsing databases ... done.
======================================================================
AutoMySQLBackup version 3.0
http://sourceforge.net/projects/automysqlbackup/
 
Backup of Database Server - localhost
Databases - information_schema,mysql,performance_schema,rhdevDB,rhqaDB,rhstgDB,rhupdDB
Databases (monthly) - mysql
======================================================================
======================================================================
Dump full schema.
 
Rotating 4 month backups for
 
======================================================================
 
======================================================================
Dump status.
 
Rotating 4 month backups for
 
======================================================================
 
Backup Start Time Thu May 10 21:54:35 UTC 2018
======================================================================
Daily Backup ...
 
Daily Backup of Database ( information_schema )
Rotating 6 day backups for information_schema
----------------------------------------------------------------------
Daily Backup of Database ( mysql )
Rotating 6 day backups for mysql
----------------------------------------------------------------------
Daily Backup of Database ( performance_schema )
Rotating 6 day backups for performance_schema
----------------------------------------------------------------------
Daily Backup of Database ( rhdevDB )
Rotating 6 day backups for rhdevDB
----------------------------------------------------------------------
Daily Backup of Database ( rhqaDB )
Rotating 6 day backups for rhqaDB
----------------------------------------------------------------------
Daily Backup of Database ( rhstgDB )
Rotating 6 day backups for rhstgDB
----------------------------------------------------------------------
Daily Backup of Database ( rhupdDB )
Rotating 6 day backups for rhupdDB
----------------------------------------------------------------------
 
Backup End Time Thu May 10 21:54:47 UTC 2018
======================================================================
Total disk space used for backup storage...
Size - Location
11M /var/lib/automysqlbackup
 
======================================================================
 
###### WARNING ######
Errors reported during AutoMySQLBackup execution.. Backup failed
Error log below..
mysqldump: Got error: 1044: "Access denied for user 'root'@'localhost' to database 'information_schema'" when using LOCK TABLES
mysqldump: Got error: 1142: "SELECT,LOCK TABL command denied to user 'root'@'localhost' for table 'cond_instances'" when using LOCK TABLES
```

**Solution:** Since I don't need to backup the 'information_schema', I usually just list down the needed database in corresponding conf file (in this case /etc/automysqlbackup/rh.conf). Searched for the string
```
CONFIG_db_names=()
```

and added only the needed databases as follows:
```
CONFIG_db_names=('rhdevDB' 'rhqaDB' 'rhstgDB' 'rhupdDB')
```
Rerun. Most of the time (in all cases like this actually), this worked for me.
