---
title: "Create File"
date: 2019-09-21T00:20:25+08:00
tags: [ansible, create-file]
draft: false
---

```
---
- hosts: localhost
  become: true
   
  tasks:
      - name: Create file
        file:
            path: /tmp/yallo
            state: touch
```

Ref http://docs.ansible.com/ansible/latest/file_module.html

An alternative is to use 'lineinfile' module. In my example below, Ubuntu 18.x no longer has the /etc/rc.local but it still works. See below

```
## NOTE : /etc/rc.local doesn't exist in Ubuntu18.x but still runs if executable + has the shebang line
## See https://www.claudiokuenzler.com/blog/783/ubuntu-18.04-rc.local-file-not-exist-launch-with-systemd-rc-local#.XDYuL88zZTY
- name: Create executable /etc/rc.local if it doesn't exist
  lineinfile:
    dest: /etc/rc.local
    line: "{{ item }}"
    create: yes
    mode: 0755
  with_items:
    - '#!/bin/bash'
    - 'exit 0'
```
