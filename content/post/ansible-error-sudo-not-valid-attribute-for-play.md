---
title: "Ansible Error: sudo not valid attribute for Play"
date: 2020-10-06T00:20:25+08:00
tags: [ansible, sudo, playbook]
draft: false
---

If you see an error such as this:
```
ERROR! 'sudo' is not a valid attribute for a Play
```

You need to replace:
```
sudo: yes
```
with
```
become:true
```
See https://stackoverflow.com/questions/60162859/error-sudo-is-not-a-valid-attribute-for-a-play
