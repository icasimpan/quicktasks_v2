---
title: "Dump MySQL Database"
date: 2018-10-15T12:38:49+08:00
tags: [mysql, mariadb, dump, database, mysqldump, cli]
draft: false
---
```
mysqldump -u<username> -p<password> --no-create-db myDB -h localhost > mysql.backup

```

That way, it would strip the original database name and NOT become a problem when importing to another database name. See https://stackoverflow.com/questions/30835874/how-to-avoid-use-database-statement-on-mysqldump-backups
