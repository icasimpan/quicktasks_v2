---
title: "Delete LetsEncrypt Certificate"
date: 2020-08-26T00:20:25+08:00
tags: [sslcert, tlscert, letsencrypt]
draft: false
---

Given the following cert:
```
root@php73:~# certbot certificates
Saving debug log to /var/log/letsencrypt/letsencrypt.log

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Found the following certs:
  Certificate Name: php72.example.com
    Domains: php72.example.com php72.example.net
    Expiry Date: 2020-11-19 01:30:55+00:00 (VALID: 85 days)
    Certificate Path: /etc/letsencrypt/live/php72.example.com/fullchain.pem
    Private Key Path: /etc/letsencrypt/live/php72.example.com/privkey.pem
  Certificate Name: php73.example.com
    Domains: php73.example.com php73.example.net
    Expiry Date: 2020-11-23 21:37:01+00:00 (VALID: 89 days)
    Certificate Path: /etc/letsencrypt/live/php73.example.com/fullchain.pem
    Private Key Path: /etc/letsencrypt/live/php73.example.com/privkey.pem
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
```
And you want to delete `php72.example.com` do:
```
root@php73:~# certbot delete --cert-name php72.example.com
Saving debug log to /var/log/letsencrypt/letsencrypt.log

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Deleted all files relating to certificate php72.example.com.
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
```
