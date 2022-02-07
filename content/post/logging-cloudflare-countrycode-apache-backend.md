---
title: "Logging Cloudflare Country Code in Apache Backend" 
date: 2020-07-10T00:20:25+08:00
tags: [apache, webserver, cloudflare, logging]
draft: false
---

```
...
...
LogFormat "%h %l %u %t \"%r\" %>s %b \"%{Referer}i\" \"%{User-Agent}i\" %{cf-ipcountry}i" cloudflare_custom
CustomLog /var/log/httpd/site.example.com-cloudflare_custom.log cloudflare_custom
...
...
````

See details in https://support.cloudflare.com/hc/en-us/articles/200168236-What-does-Cloudflare-IP-Geolocation-do-
