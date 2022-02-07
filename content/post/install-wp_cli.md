---
title: "Install wp_cli"
date: 2019-09-28T23:17:11+08:00
tags: [wordpress, wp_cli, wp-cli, install]
draft: false
---

```
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
php wp-cli.phar --info                ## check if it's working.
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp
wp --info                             ## re-check if it's working as 'wp'
```
Details in https://wp-cli.org/
