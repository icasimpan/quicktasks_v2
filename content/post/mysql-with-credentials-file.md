---
title: "MySQL/MariaDB with Credentials File"
date: 2020-05-12T23:11:25+08:00
tags: [mysql, mariadb, authentication, permission, credentials, credentials-file, mysql-security]
draft: false
---

Using a configuration file for mysql is a good practice as you don't immediately expose credentials.
Below, you are going to mysql cli and immediately using the db named dbName.
```
mysql --defaults-file=/path/to/credentials.ini  dbName
```

where credentials.ini has this format:
```
[client]
host=<replace_with_servername_or_ip>
user=<replace_with_db_user>
password=<replace_with_db_password>
```

Of course, there are other security precautions you could take, not just the above but it's a good start.
See further info on securing mysql in https://dev.mysql.com/doc/refman/8.0/en/password-security-user.html
