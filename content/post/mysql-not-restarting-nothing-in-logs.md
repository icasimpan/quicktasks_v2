---
title: "Mysql Not Restarting Nothing in Logs"
date: 2018-04-08T23:24:04+08:00
tags: [mysql, mariadb, error, logs, restart]
draft: false
---

Check /etc/mysql/my.cnf and examine "datadir" value. If it isn't valid or you know the disk is bad, change it. Restart service and all will be well. 
