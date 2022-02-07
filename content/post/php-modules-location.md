---
title: "php modules location"
date: 2019-09-28T00:20:25+08:00
tags: [php, modules, installation]
draft: false
---

```
Check the current extension directory with:
 
php-config --extension-dir
and you can change it by setting extension_dir in php.ini:
 
extension_dir="/usr/lib64/php/modules"
Don't forget to restart Apache.
```
See https://serverfault.com/questions/316156/change-php-modules-directory
