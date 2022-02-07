---
title: "Replace SSH Connectivity via Paramiko"
date: 2019-09-21T00:20:25+08:00
tags: [ansible, ssh, paramiko]
draft: false
---


When an issue such as "Timeout, waiting for priviledged escalation" happens

Run the playbook as follows:
```
ansible-playbook -c paramiko ansible/ansible-usermgr.yml -i "cool.example.com, " -vvv
```
suggested in https://github.com/ansible/ansible/issues/14426
