---
title: "Dump MySQL Database but Skip Some Table(s)"
date: 2019-11-24T12:38:49+08:00
tags: [mysql, mariadb, tables, dump, cli, mysqldump, database]
draft: false
---
```
mysqldump -u<username> -p<password> --no-create-db myDB --ignore-table=myDB.table1 --ignore-table=myDB.table3-h localhost > mysql.backup

```

See https://tecadmin.net/tutorial/mysql/skip-tables-in-mysqldump/
