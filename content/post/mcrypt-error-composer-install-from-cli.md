---
title: "Mcrypt error when running 'composer install' from CLI"
date: 2019-09-28T00:20:25+08:00
tags: [php, install, mcrypt, composer, cli]
draft: false
---

Verify if mcypt is really installed
```
php -m|grep -i mcrypt
```
Counter-check from phpmyadmin. If it say installed there, issue is that php-cli can't see mcrypt as a module.
Find the mcrypt definition and symlink similar to below:
```
ln -s /etc/php5/mods-available/mcrypt.ini /etc/php5/cli/conf.d/20-mcrypt.ini
```
See details in https://stackoverflow.com/questions/16830405/laravel-requires-the-mcrypt-php-extension
