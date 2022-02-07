---
title: "Install rpm via Ansible"
date: 2019-09-21T00:20:25+08:00
tags: [ansible, rpm, install]
draft: false
---

Manual
```
sudo rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
```

In Ansible:
```
- name: Add Web Static Repo
  yum:
    name: https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
    state: present
```
