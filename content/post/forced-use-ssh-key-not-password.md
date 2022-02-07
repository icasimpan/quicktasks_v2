---
title: "Force ssh client to use ssh-key and not password to authenticate"
date: 2020-04-05T18:36:44+08:00
tags: [ssh, ssh-key, keys, password, authenticate]
draft: false
---

```
ssh -i ./server-keys.ppk -o PubkeyAuthentication=yes -o PasswordAuthentication=no deps@104.129.111.150
```
Some details in https://unix.stackexchange.com/questions/15138/how-to-force-ssh-client-to-use-only-password-auth

Tested in:

* OpenSSH_7.4p1, OpenSSL 1.0.2k-fips
