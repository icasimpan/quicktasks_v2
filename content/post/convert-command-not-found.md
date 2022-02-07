---
title: "Convert command not found"
date: 2019-09-28T00:20:25+08:00
tags: [php, convert, php-convert, install]
draft: false
---

I was seeing this error from drupal logs:

```
 User error: ImageMagick error 127: sh: convert: command not found in _imagemagick_convert_exec() (line 522 of /var/www/example.com/docroot/sites/all/modules/contrib/imagemagick/imagemagick.module).
```

Which indicates that package ImageMagick wasn't installed. Since the machine in questions was CentOS7, I installed it as follows:
```
~$ sudo yum install ImageMagick -y
```

Ref:
* https://www.experts-exchange.com/questions/27962692/Drupal-7-error-ImageMagick-error-127.html
* https://www.drupal.org/node/153310
* https://syslint.com/blog/tutorial/install-imagemagick-in-centos7/
