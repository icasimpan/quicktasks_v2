---
title: "How do you know the php.ini used via CLI"
date: 2019-09-28T00:20:25+08:00
tags: [php, cli, php-ini]
draft: false
---

```
<?php
$inipath = php_ini_loaded_file();
if ($inipath) {
    echo 'Loaded php.ini: ' . $inipath;
} else {
    echo 'A php.ini file is not loaded';
}
?>
```
or
```
[icasimpan!@example.org ~]$ php -i |grep php.ini
Configuration File (php.ini) Path => /etc
Loaded Configuration File => /etc/php.ini 
```
But not that server and CLI used php.ini could be different. Details in https://stackoverflow.com/questions/14558150/how-to-know-which-php-ini-is-used
