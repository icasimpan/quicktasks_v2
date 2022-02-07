---
title: "Create DB with ACL"
date: 2018-04-08T23:15:37+08:00
tags: [mysql, mariadb, permission, acl, access, user, create]
draft: false
---

```
create database yourDB;
CREATE USER 'yourDBA'@'localhost' IDENTIFIED BY 'yourPASS';
GRANT ALL PRIVILEGES ON yourDB.* TO 'yourDBA'@'localhost';
FLUSH PRIVILEGES;
```
