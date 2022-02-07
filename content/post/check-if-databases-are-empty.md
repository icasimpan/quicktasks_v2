---
title: "Check if databases are empty"
date: 2020-09-02T23:11:25+08:00
tags: [mysql, mariadb, databases]
draft: false
---

To check if MariaDB/MySQL databases are empty in your DB Server, run the following query:
```
MariaDB [(none)]> SELECT table_schema, # "DB Name", 
    -> Round(Sum(data_length + index_length) / 1024 / 1024, 1) # "DB Size in MB" 
    -> FROM   information_schema.tables 
    -> GROUP  BY table_schema; 
+--------------------+---------------------------------------------------------+
| table_schema       | Round(Sum(data_length + index_length) / 1024 / 1024, 1) |
+--------------------+---------------------------------------------------------+
| facultyblog        |                                                   970.5 |
| information_schema |                                                     0.2 |
| laxnews            |                                                    65.9 |
| exam_prodDB.       |                                                   289.4 |
| mvlc               |                                                    17.9 |
| mysql              |                                                     0.6 |
| performance_schema |                                                     0.0 |
| piwigo             |                                                    77.6 |
| poll               |                                                    22.3 |
+--------------------+---------------------------------------------------------+
9 rows in set (0.439 sec)
```

See details in https://stackoverflow.com/questions/9620198/how-to-get-the-sizes-of-the-tables-of-a-mysql-database
