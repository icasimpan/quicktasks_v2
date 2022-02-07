---
title: "Check Current Character Set Settings in MySQL"
date: 2018-10-15T07:46:36+08:00
tags: [mysql, mariadb, charset, character-set, settings, config, configuration]
draft: false
---
```
mysql> SHOW VARIABLES WHERE Variable_name LIKE 'character\_set\_%' OR Variable_name LIKE 'collation%';
```

Sample output as follows:
![check-mysql-charset-settings](/img/check-mysql-charset-settings.png)

