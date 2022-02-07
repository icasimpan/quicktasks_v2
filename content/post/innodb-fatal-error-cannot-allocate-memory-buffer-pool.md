---
title: "[InnoDB] Fatal error: cannot allocate memory for the buffer pool"
date: 2018-12-29T09:47:00+08:00
tags: [mysql, mariadb, innodb, error, memory, config, configuration, logs]
draft: false
---

From /var/log/mariadb/mariadb.log, something like
```
            150515 12:10:45 InnoDB: Completed initialization of buffer pool
            150515 12:10:45 InnoDB: Fatal error: cannot allocate memory for the buffer pool
            150515 12:10:45 [ERROR] Plugin 'InnoDB' init function returned error.
            150515 12:10:45 [ERROR] Plugin 'InnoDB' registration as a STORAGE ENGINE failed.
            150515 12:10:45 [ERROR] Unknown/unsupported storage engine: InnoDB
            150515 12:10:45 [ERROR] Aborting
```

Ensure to allocate 50% of max machine RAM. Assuming you have 2GB in the machine, you'll need
```
innodb_buffer_pool_size = 1024M
```
increase by 25% and try restarting mariadb. If it still doesn't work, create swap file. I usually start at 50% of max machine RAM which usually fix this problem.
Some reference https://stackoverflow.com/questions/12114746/mysqld-service-stops-once-a-day-on-ec2-server/12683951#12683951

For another look at this case, see https://cyberpersons.com/2020/01/25/innodb-cannot-allocate-memory-for-the-buffer-pool-solved/
