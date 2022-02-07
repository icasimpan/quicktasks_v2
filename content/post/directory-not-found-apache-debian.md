---
title: "Directory not Found in Debian Apache"
date: 2019-09-30T00:20:25+08:00
tags: ["ubuntu", "debian", "directory", "linux"]
draft: false
---

Some SSL Certs needs to validate through a text file served in apache.
Something like:
http://example.org/.well-known/pki-validation/F70E08C160E9B8C7GB488B8AEB246D11B.txt

Solution: Add similar configuration in the virtualhost file in apache:
```
Alias /.well-known/pki-validation/ /var/www/sites/example.org/.well-known/pki-validation/
<Directory "/var/html/example.org/.well-known/pki-validation">
   Order allow,deny
   Allow from all
   Satisfy all
</Directory>
```
