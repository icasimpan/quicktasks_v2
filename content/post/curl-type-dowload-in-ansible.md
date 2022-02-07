---
title: "Curl type download in Ansible"
date: 2020-03-11T00:20:25+08:00
tags: [ansible, curl, download]
draft: false
---

```
- name: Download drush phar file (8.3.0)
  become: yes
  get_url:
    url: https://github.com/drush-ops/drush/releases/download/8.3.0/drush.phar
    dest: /usr/local/bin
    mode: +x
    checksum: sha256:ddfe6d529e44e98c2cf74c143c1fcdf67c927d6f9a5eb2ae10fbe47ef9b8eaf0
    group: root
    owner: root
```

See get_url module in https://docs.ansible.com/ansible/latest/modules/get_url_module.html
