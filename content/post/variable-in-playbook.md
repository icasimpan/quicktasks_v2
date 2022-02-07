---
title: "Variable in a Playbook"
date: 2019-09-21T00:20:25+08:00
tags: [ansible, variable, playbook]
draft: false
---
ex. Set the 'webserver_name' variable as 'httpd'

```
- set_fact:
     webserver_name: httpd
```
