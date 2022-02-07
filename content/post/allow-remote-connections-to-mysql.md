---
title: "Allow Remote Connections to MySQL/MariaDB"
date: 2018-04-08T23:11:25+08:00
tags: [mysql, mariadb, remote]
draft: false
---

Use format below:

```
GRANT ALL ON yourDB.* TO yourDBA@'23.216.39.44' IDENTIFIED BY 'yourPASS';
```

and make sure that 'bind-address' in /etc/my.cnf is either 0.0.0.0 or commented out for this to take effect.
Turn-off as well any firewall, SELinux, etc.

Further details in https://www.digitalocean.com/community/questions/how-to-allow-remote-mysql-database-connection
