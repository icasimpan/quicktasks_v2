---
title: "After Upgrading Ansible, pip had an issue SSL_ST_INIT"
date: 2019-09-21T00:20:25+08:00
tags: [ansible, ssl, upgrade, pip]
draft: false
---

```
sudo apt-get remove python-openssl
curl -o ./get-pip.py https://bootstrap.pypa.io/get-pip.py
sudo python2 ./get-pip.py
```
Replace with yum if in RH-based OS. See https://stackoverflow.com/questions/43267157/python-attributeerror-module-object-has-no-attribute-ssl-st-init for details.
