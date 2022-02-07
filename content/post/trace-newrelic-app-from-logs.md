---
title: "Trace New Relic App from Logs"
date: 2019-01-21T23:41:25+08:00
tags: [newrelic, logs]
draft: false
---

In /var/logs/newrelic

```
[root@example.com newrelic]# grep -i newrelic.com newrelic-daemon.log
2019/01/21 06:09:53.115267 (12209) Info: Reporting to: https://rpm.newrelic.com/accounts/76083/applications/159251100
2019/01/21 06:37:43.147116 (12209) Info: Reporting to: https://rpm.newrelic.com/accounts/76083/applications/159251100
2019/01/21 07:07:22.072717 (12209) Info: Reporting to: https://rpm.newrelic.com/accounts/76083/applications/159251100
2019/01/21 09:12:03.655458 (12209) Info: Reporting to: https://rpm.newrelic.com/accounts/76083/applications/159251100
2019/01/21 09:40:53.506475 (12209) Info: Reporting to: https://rpm.newrelic.com/accounts/76083/applications/159251100
2019/01/21 10:48:51.453005 (12209) Info: Reporting to: https://rpm.newrelic.com/accounts/76083/applications/159251100
2019/01/21 11:08:14.956574 (12209) Info: Reporting to: https://rpm.newrelic.com/accounts/76083/applications/159251100
2019/01/21 11:32:53.766170 (12209) Info: Reporting to: https://rpm.newrelic.com/accounts/76083/applications/159251100
2019/01/21 12:02:22.397894 (12209) Info: Reporting to: https://rpm.newrelic.com/accounts/76083/applications/159251100
```

You can then correlate this to the New Relic portal.
