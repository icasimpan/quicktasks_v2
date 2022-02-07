---
title: "Install Several Packages in a Loop"
date: 2019-09-21T00:20:25+08:00
tags: [ansible, install, package, loop]
draft: false
---

Manual
```
sudo yum install -y mod_php71w php71w-cli php71w-common php71w-gd php71w-mbstring php71w-mcrypt php71w-mysqlnd php71w-xml
```

In Ansible:
```
- name: Install needed php7 packages
  yum:
    name={{ item }}
    state=present
  with_items:
    - mod_php71w
    - php71w-cli
    - php71w-common
    - php71w-gd
    - php71w-mbstring
    - php71w-mcrypt
    - php71w-mysqlnd
    - php71w-xml
```
