---
title: "Checking status of specific jail"
date: 2019-09-28T23:17:11+08:00
tags: [fail2ban, status, jail]
draft: false
---

```
root@example:/var/log# fail2ban-client status sshd
Status for the jail: sshd
|- Filter
|  |- Currently failed: 6
|  |- Total failed: 91801
|  `- File list:    /var/log/auth.log
`- Actions
   |- Currently banned: 1
   |- Total banned: 9971
   `- Banned IP list:   51.15.255.133
```
