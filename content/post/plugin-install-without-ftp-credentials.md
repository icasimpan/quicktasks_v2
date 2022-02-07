---
title: "Plugin install without FTP Credentials"
date: 2019-09-28T23:17:11+08:00
tags: [wordpress, plugin, install, ftp]
draft: false
---

Normal behavior of Wordpress when installing plugin is to ask for FTP credentials.
So to fix the problem, just add this line to wp-config.php (of course, make sure permission are fine).
```
define('FS_METHOD','direct');
```
More troubleshooting details in https://www.digitalocean.com/community/questions/wordpress-asking-for-ftp-credentials
