---
title: "iptables: Allow Specific IP to Connect via SSH."
date: 2019-09-28T00:20:25+08:00
tags: [firewall, iptables, specific-ip, ssh]
draft: false
---

```
iptables -A INPUT -p tcp -s 114.191.33.88 --dport 22 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
iptables -A OUTPUT -p tcp --sport 22 -m conntrack --ctstate ESTABLISHED -j ACCEPT
```
