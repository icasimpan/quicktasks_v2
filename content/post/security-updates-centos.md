---
title: "Security Updates on CentOS"
date: 2020-07-12T00:20:25+08:00
tags: ["centos", "linux", "security", "updates"]
draft: false
---

Is best done manually:
```
sudo yum -y update --security
```

```
The problem is that CentOS does not supply the necessary metadata in its yum repositories such that yum-plugin-security can function. In other words, yum-plugin-security does nothing, and the automation of security updates is a lost cause in CentOS. In fact, the CentOS developers go so far as to say this will never work. And yum-cron is no solution as it actually disables security updates from the CentOS repositories completely. The only yum repository that contains relevant security metadata is EPEL (which still doesn't solve the yum-plugin-security problem).
```
https://www.techrepublic.com/article/why-you-shouldnt-enable-automatic-security-updates-on-centos-7-with-yum-cron/
