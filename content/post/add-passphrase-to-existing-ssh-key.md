---
title: "Add Passphrase to Existing SSH Key"
date: 2020-04-05T18:36:44+08:00
tags: [ssh, private-key, passphrase]
draft: false
---

```
$ openssl rsa -aes256 -in ./id_rsa -out ./id_rsa.hashed
writing RSA key
Enter PEM pass phrase:
Verifying - Enter PEM pass phrase:
```
You should then use './id_rsa.hashed' as your private key. See https://security.stackexchange.com/questions/59136/can-i-add-a-password-to-an-existing-private-key for details.
