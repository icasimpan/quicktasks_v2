---
title: "Mail Encryption in Postfix"
date: 2019-09-28T00:20:25+08:00
tags: [postfix, encryption]
draft: false
---

in /etc/postfix/main.cf, add:

```
smtpd_tls_security_level = may
smtp_tls_security_level = may
smtp_tls_loglevel = 1
smtpd_tls_loglevel = 1
```
Details from From http://blog.snapdragon.cc/2013/07/07/setting-postfix-to-encrypt-all-traffic-when-talking-to-other-mailservers/
