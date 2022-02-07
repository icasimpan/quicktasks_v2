---
title: "Error 1273 (HY000): Unknown collation 'utf8mb4_unicode_520_ci"
date: 2018-04-08T23:28:33+08:00
tags: [mysql, mariadb, error, charset, character-set]
draft: false
---

Caused by difference in database versions where the latest version you're running does not support 'utf8mb4unicode520_ci'.

Search and replace it from within the dump file with 'utf8mb4_unicode_ci'.

See details in https://www.digitalocean.com/community/questions/error-1273-hy000-at-line-25-unknown-collation-utf8mb4_unicode_520_ci

