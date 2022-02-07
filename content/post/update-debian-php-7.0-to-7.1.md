---
title: "Update Debian PHP 7.0 To 7.1"
date: 2019-09-30T00:20:25+08:00
tags: ["debian", "php", "deb", "linux"]
draft: false
---
```
sudo apt-get install -y python-software-properties
sudo add-apt-repository -y ppa:ondrej/php
sudo apt-get update -y
sudo apt-get install -y $(apt-cache pkgnames | grep php7.1|tr "\n" " ")
```
See https://www.vultr.com/docs/how-to-install-and-configure-php-70-or-php-71-on-ubuntu-16-04

