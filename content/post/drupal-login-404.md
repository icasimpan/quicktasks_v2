---
title: "Drupal Login Not Found"
date: 2020-05-01T00:20:25+08:00
tags: [drupal, login, 404]
draft: false
---

When you login to drupal via https://example.com/user and it is not found, try to check for the following:
1. Does it have .htaccess if in an apache web server?
2. If in nginx, is the correct virtualhost rules in place?
3. Does documentroot in apache have the needed directives to activate .htaccess?

Answer that and you will fix the issue. If you feel stuck, read https://www.drupal.org/docs/7/configuring-clean-urls/enable-clean-urls
