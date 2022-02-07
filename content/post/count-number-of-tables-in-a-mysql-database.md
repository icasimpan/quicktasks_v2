---
title: "Count Number of Tables in a MySQL Database"
date: 2018-10-15T12:43:31+08:00
tags: [mysql, mariadb, tables, count]
draft: false
---
```
mysql> select distinct(TABLE_SCHEMA) from information_schema.tables;
+--------------------+
| TABLE_SCHEMA       |
+--------------------+
| information_schema |
| drcongo            |
| mysql              |
| performance_schema |
| pseademo           |
| pseairaq           |
| sys                |
+--------------------+
 
mysql> select count(*) from information_schema.tables where TABLE_SCHEMA='drcongo';
+----------+
| count(*) |
+----------+
|      333 |
+----------+
1 row in set (0.00 sec)
```
