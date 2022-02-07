---
title: "BASH_FUNC_module error"
date: 2018-04-09T00:20:25+08:00
tags: [drupal, bash, error, php, configuration]
draft: false
---

This error is seen as follows:
```
sh: module: line 1: syntax error: unexpected end of file
sh: error importing function definition for `BASH_FUNC_module'
```

A lot of discussions has been done about it in https://github.com/drush-ops/drush/issues/2065#issuecomment-227820550 but the fix is made from /etc/php.ini:

```
disable_functions = pcntl_exec
```
