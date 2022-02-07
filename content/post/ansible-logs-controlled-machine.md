---
title: "Ansible Logs in Controlled Machine"
date: 2019-09-21T00:20:25+08:00
tags: [ansible, syslog, logs]
draft: false
---

It's in syslog. In ubuntu, do the following:

```
grep -i ansible /var/log/syslog
```
See details in https://serverfault.com/questions/531004/where-do-i-find-the-latest-ansible-error-log
