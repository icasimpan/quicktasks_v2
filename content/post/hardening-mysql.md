---
title: "Hardening Mysql"
date: 2018-04-08T23:31:14+08:00
tags: [mysql, mariadb, hardening]
draft: false
---

```
icasimpan@am2018:~$ sudo mysql_secure_installation
 
Securing the MySQL server deployment.
 
Connecting to MySQL using a blank password.
 
VALIDATE PASSWORD PLUGIN can be used to test passwords
and improve security. It checks the strength of password
and allows the users to set only those passwords which are
secure enough. Would you like to setup VALIDATE PASSWORD plugin?
 
Press y|Y for Yes, any other key for No: Y
 
There are three levels of password validation policy:
 
LOW    Length >= 8
MEDIUM Length >= 8, numeric, mixed case, and special characters
STRONG Length >= 8, numeric, mixed case, special characters and dictionary                  file
 
Please enter 0 = LOW, 1 = MEDIUM and 2 = STRONG: 8
 
Invalid option provided.
 
There are three levels of password validation policy:
 
LOW    Length >= 8
MEDIUM Length >= 8, numeric, mixed case, and special characters
STRONG Length >= 8, numeric, mixed case, special characters and dictionary                  file
 
Please enter 0 = LOW, 1 = MEDIUM and 2 = STRONG: 2
Please set the password for root here.
 
New password:
 
Re-enter new password:
 
Estimated strength of the password: 100
Do you wish to continue with the password provided?(Press y|Y for Yes, any other key for No) : Y
By default, a MySQL installation has an anonymous user,
allowing anyone to log into MySQL without having to have
a user account created for them. This is intended only for
testing, and to make the installation go a bit smoother.
You should remove them before moving into a production
environment.
 
Remove anonymous users? (Press y|Y for Yes, any other key for No) : Y
Success.
 
 
Normally, root should only be allowed to connect from
'localhost'. This ensures that someone cannot guess at
the root password from the network.
 
Disallow root login remotely? (Press y|Y for Yes, any other key for No) : y
Success.
 
By default, MySQL comes with a database named 'test' that
anyone can access. This is also intended only for testing,
and should be removed before moving into a production
environment.
 
 
Remove test database and access to it? (Press y|Y for Yes, any other key for No) : y
 - Dropping test database...
Success.
 
 - Removing privileges on test database...
Success.
 
Reloading the privilege tables will ensure that all changes
made so far will take effect immediately.
 
Reload privilege tables now? (Press y|Y for Yes, any other key for No) : y
Success.
 
All done!
```

See https://www.techrepublic.com/article/how-to-harden-mysql-security-with-a-single-command/
