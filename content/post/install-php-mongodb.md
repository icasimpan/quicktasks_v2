---
title: "Install PHP7.2 MongoDB"
date: 2019-09-28T00:20:25+08:00
tags: [php, php-mongodb]
draft: false
---

```
$ git clone https://github.com/mongodb/mongo-php-driver.git
$ cd mongo-php-driver
$ git submodule sync && git submodule update --init
$ phpize
$ ./configure
$ make all -j 5
$ sudo make install
```
Details in https://www.php.net/manual/en/mongodb.installation.manual.php or https://stackoverflow.com/questions/46276978/install-mongodb-driver-in-cent-os-7-with-php7-1

In my case, I also had to add to 20-mongodb.ini.
