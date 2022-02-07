---
title: "Create Directory"
date: 2019-09-21T00:20:25+08:00
tags: [ansible, create-directory]
draft: false
---

```
---
- hosts: localhost
  become: true
   
  tasks:
      - name: Create directory
        file:
            path: /tmp/yallo_dir
            state: directory
```
Ref http://docs.ansible.com/ansible/latest/file_module.html
