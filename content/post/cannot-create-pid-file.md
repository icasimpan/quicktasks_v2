---
title: "Cannot write pid file"
date: 2020-02-19T23:11:25+08:00
tags: [mysql, mariadb, pid, permission]
draft: false
---

MariaDB seems to have this issue and can't start as shown in /var/log/mariadb/mariadb.log

```
2020-02-19 15:18:49 0 [ERROR] mysqld: Can't create/write to file '/var/run/mariadb/mariadb.pid' (Errcode: 2 "No such file or directory")
```

I was able to fix one instance of this issue by doing:
```
sudo mkdir /var/run/mariadb
sudo chown mysql.mysql /var/run/mariadb
```

Then afterwards, starting the mariadb service went fine.

Some possible solutions in case my solution doesn't work https://stackoverflow.com/questions/15408643/cant-connect-to-mysql-server-cant-create-write-the-pid-file
