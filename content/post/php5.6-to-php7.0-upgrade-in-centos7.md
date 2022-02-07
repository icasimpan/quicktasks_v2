---
title: "Upgrade php 5.6 to php 7.0 in CentOS7"
date: 2020-07-12T00:20:25+08:00
tags: ["centos", "linux", "php", "upgrade"]
draft: false
---

NOTE: php5.6 and php7.0 is no longer supported.
```
wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
wget http://rpms.remirepo.net/enterprise/remi-release-7.rpm
rpm -Uvh remi-release-7.rpm epel-release-latest-7.noarch.rpm
```

Then, enable "remi-php70" in /etc/yum.repos.d/remi-php70.repo

Then, yum update php.

Details in https://blog.remirepo.net/post/2016/02/14/Install-PHP-7-on-CentOS-RHEL-Fedora
