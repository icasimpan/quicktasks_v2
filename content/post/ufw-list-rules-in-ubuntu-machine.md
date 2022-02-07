---
title: "ufw: List Rules in Ubuntu Machine"
date: 2019-09-21T00:20:25+08:00
tags: [firewall, ufw, ubuntu]
draft: false
---

```
root@xxx:/var/log# ufw status
Status: active
 
To                         Action      From
--                         ------      ----
22                         LIMIT       Anywhere                 
80                         ALLOW       Anywhere                 
443                        ALLOW       Anywhere                 
??41908/tcp                  ALLOW       Anywhere                 
Anywhere                   ALLOW       115.85.11.98             
25/tcp                     ALLOW       Anywhere                 
4444/tcp                   ALLOW       Anywhere                 
4444/udp                   ALLOW       Anywhere                 
22 (v6)                    LIMIT       Anywhere (v6)            
80 (v6)                    ALLOW       Anywhere (v6)            
443 (v6)                   ALLOW       Anywhere (v6)            
41908/tcp (v6)             ALLOW       Anywhere (v6)            
25/tcp (v6)                ALLOW       Anywhere (v6)            
4444/tcp (v6)              ALLOW       Anywhere (v6)            
4444/udp (v6)              ALLOW       Anywhere (v6)
```
