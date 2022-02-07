---
title: "Undefined Class Constant MYSQL_ATTR_SSL_CA"
date: 2018-10-15T07:27:21+08:00
tags: [mysql, mariadb, error, undefined, logs]
draft: false
---
```
drupal@ubuntu:/var/www/sites/openedu.localhost/docroot$ drush si site-name='OpenEDU Testing' --db-url='mysql://openedu_DBA:openedu_PASS@127.0.0.1/openedu_DB' openedu
PHP Fatal error:  Uncaught Error: Undefined class constant 'MYSQL_ATTR_SSL_CA' in /usr/local/share/drush/lib/Drush/Sql/Sqlmysql.php:56
Stack trace:
#0 /usr/local/share/drush/lib/Drush/Sql/SqlBase.php(164): Drush\Sql\Sqlmysql->creds()
#1 /usr/local/share/drush/lib/Drush/Sql/Sqlmysql.php(107): Drush\Sql\SqlBase->query('SELECT 1;', '/tmp/drush_uX7T...', '/dev/null')
#2 /usr/local/share/drush/commands/core/site_install.drush.inc(146): Drush\Sql\Sqlmysql->db_exists()
#3 /usr/local/share/drush/includes/command.inc(422): drush_core_pre_site_install('site-name=OpenE...')
#4 /usr/local/share/drush/includes/command.inc(231): _drush_invoke_hooks(Array, Array)
#5 /usr/local/share/drush/includes/command.inc(199): drush_command('site-name=OpenE...')
#6 /usr/local/share/drush/lib/Drush/Boot/BaseBoot.php(67): drush_dispatch(Array)
#7 /usr/local/share/drush/includes/preflight.inc(66): Drush\Boot\BaseBoot->bootstrap_and_dispatch()
#8 /usr/local/share/drush/drush.php(12): drush_main()
#9 {main}
  thrown in /usr/local/share/drush/lib/Drush/Sql/Sqlmysql.php on line 56
Drush command terminated abnormally due to an unrecoverable error.                                                                                                       [error]
Error: Uncaught Error: Undefined class constant 'MYSQL_ATTR_SSL_CA' in /usr/local/share/drush/lib/Drush/Sql/Sqlmysql.php:56
Stack trace:
#0 /usr/local/share/drush/lib/Drush/Sql/SqlBase.php(164): Drush\Sql\Sqlmysql->creds()
#1 /usr/local/share/drush/lib/Drush/Sql/Sqlmysql.php(107): Drush\Sql\SqlBase->query('SELECT 1;', '/tmp/drush_uX7T...', '/dev/null')
#2 /usr/local/share/drush/commands/core/site_install.drush.inc(146): Drush\Sql\Sqlmysql->db_exists()
#3 /usr/local/share/drush/includes/command.inc(422): drush_core_pre_site_install('site-name=OpenE...')
#4 /usr/local/share/drush/includes/command.inc(231): _drush_invoke_hooks(Array, Array)
#5 /usr/local/share/drush/includes/command.inc(199): drush_command('site-name=OpenE...')
#6 /usr/local/share/drush/lib/Drush/Boot/BaseBoot.php(67): drush_dispatch(Array)
#7 /usr/local/share/drush/includes/preflight.inc(66): Drush\Boot\BaseBoot->bootstrap_and_dispatch()
#8 /usr/local/share/drush/drush.php(12): drush_main()
#9 {main}
  thrown in /usr/local/share/drush/lib/Drush/Sql/Sqlmysql.php, line 56
```

Solution: 
```
sudo apt-get install php-mysql
```
see details in https://stackoverflow.com/questions/13375061/installing-pdo-driver-on-mysql-linux-server

Another possible solution: check and ensure the mysql credentials can access the database itself.
