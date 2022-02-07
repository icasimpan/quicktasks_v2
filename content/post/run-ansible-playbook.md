---
title: "Run Ansible Playbook"
date: 2019-09-21T00:20:25+08:00
tags: [ansible, playbook]
draft: false
---

```
ansible-playbook ansible/web-apache-ubuntu.yml -u root --private-key ~/.ssh/ansible-only.ppk -i "67.217.89.118, " -vvv
```
