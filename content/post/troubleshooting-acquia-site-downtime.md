---
title: "Acquia: Troubleshooting Site Downtime"
date: 2020-06-05T00:20:31+08:00
tags: [drupal, acquia, downtime, troubleshooting]
draft: false
---
Below are some common performance-impacting issues that your environment(s) may be experiencing:

* **Traffic:** Increased traffic to your environment(s) may be causing service to be interrupted on those environments.
* **Apache access logs:** https://docs.acquia.com/acquia-cloud/monitor/logs/
* **Insight:** https://docs.acquia.com/acquia-cloud/insight/
* **Stack Metrics:** https://docs.acquia.com/acquia-cloud/monitor/stackmetrics/application/
* **Out of memory issues:** Check Stack Metrics for out of memory errors: https://docs.acquia.com/acquia-cloud/monitor/stackmetrics/
* **Learn to find and resolve memory related errors:** https://support.acquia.com/hc/en-us/articles/360005248674-Finding-Resolving-Memory-Related-PHP-errors-in-Acquia-Cloud
* **Application issues** - Did you deploy code recently? If so, try reverting code to a previous tag that works properly.
* **Caching issues:** Did you clear Varnish cache recently? Clearing Varnish cache can cause performance issues as the cache rebuilds. Consult caching overview documentation for more information and related links: https://support.acquia.com/hc/en-us/articles/360005212334-Caching-overview
* **External calls:** If your website is retrieving information from an external service, check to see that you have timeouts implemented in your application to prevent future downtime. Learn more about external calls: https://support.acquia.com/hc/en-us/articles/360004267413-Handling-external-website-calls
