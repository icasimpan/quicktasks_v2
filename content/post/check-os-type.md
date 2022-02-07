---
title: "Check OS Type"
date: 2019-09-21T00:20:25+08:00
tags: [ansible, check-os]
draft: false
---

```
ansible all -m setup -a "filter=ansible_distribution*"
```
more in https://raymii.org/s/tutorials/Ansible_-_Only_if_on_specific_distribution_or_distribution_version.html
