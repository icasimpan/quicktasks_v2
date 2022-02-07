---
title: "Ansible Multiple Conditions Using when ons Single Task.md"
date: 2020-03-11T00:20:25+08:00
tags: [ansible, multiple, multi-condition, conditional]
draft: false
---

There are a lot of ways on doing it. One of it is as follows:

```
tasks:
  - name: "shut down CentOS 6 and Debian 7 systems"
    command: /sbin/shutdown -t now
    when: (ansible_facts['distribution'] == "CentOS" and ansible_facts['distribution_major_version'] == "6") or
          (ansible_facts['distribution'] == "Debian" and ansible_facts['distribution_major_version'] == "7")
```

Read further in [Ansible Official Docs](https://docs.ansible.com/ansible/latest/user_guide/playbooks_conditionals.html#the-when-statement).
