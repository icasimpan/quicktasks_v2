---
title: "MariaDB root Account Ignoring Password"
date: 2020-04-29T23:11:25+08:00
tags: [mariadb, root, ignored-password]
draft: false
---

Observed this in Mariadb 10.x versions.
Despite being able to change password, it is still ignoring the password.

Non-root user not affected.

*Explanation* per https://mariadb.com/kb/en/authentication-from-mariadb-104/
> Using unix_socket means that if you are the system root user, you can login as root@locahost without a password. This technique was pioneered by Otto Kekäläinen in Debian MariaDB packages and has been successfully used in Debian since as early as MariaDB 10.0.

> It is based on a simple fact that asking the system root for a password adds no extra security — root has full access to all the data files and all process memory anyway. But not asking for a password means, there is no root password to forget (no need for the numerous tutorials on “how to reset MariaDB root password”). And if you want to script some tedious database work, there is no need to store the root password in plain text for the script to use (no need for debian-sys-maint user).
