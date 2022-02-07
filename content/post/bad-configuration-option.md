---
title: "Bad Configuration Option"
date: 2020-04-05T18:36:44+08:00
tags: [ssh, config, bad]
draft: false
---

Noticed this one in a compromised machine by a cryptocurrency(monero) miner:

```
icasimpan@example-prod:~$ scp wp.example.com-HTMLonly.tgz icasimpan@another-example.info:~/
command-line: line 0: Bad configuration option: PermitLocalCommand
lost connection
```
Fix was to remove and re-install openssh-server
```
sudo apt-get remove openssh-server
sudo apg-get install openssh-server
```
Details in https://stackoverflow.com/questions/16182300/scp-error-bad-configuration-option-permitlocalcommand
