---
title: "Specific IP Connection to SSH Using Firewalld Rich Rules"
date: 2019-09-28T00:20:25+08:00
tags: [firewall, firewalld, rich-rules]
draft: false
---

```
sudo firewall-cmd --add-rich-rule 'rule family="ipv4" source address="192.168.10.9" service name="ssh" accept' --permanent
sudo firewall-cmd --remove-service ssh --permanent  ## needed, otherwise ssh will still be allowed for all
sudo systemctl reload firewalld
```

See details in https://access.redhat.com/discussions/1342573
