---
title: "Apache Basic Authentication in ProxyPass"
date: 2020-07-10T00:20:25+08:00
tags: [apache, webserver, proxypass]
draft: false
---

```
<VirtualHost *:443>
    ServerName example.com
 
        SSLEngine on
        SSLCertificateFile      /etc/httpd/conf.d/ssl/2017-example.com.crt
        SSLCertificateKeyFile   /etc/httpd/conf.d/ssl/2017-example.com.key
        SSLCertificateChainFile /etc/httpd/conf.d/ssl/2017-example.com.bundle.crt
 
 
    ProxyPreserveHost On
 
    ProxyPass / http://127.0.0.1:8025/
    ProxyPassReverse / http://127.0.0.1:8025/
 
        <Location />
           Options -Indexes
           AllowOverride All
 
           AuthType Basic
           AuthName "Development Area"
           AuthUserFile /var/www/sites/.htpasswd
           Require valid-user
        </Location>
</VirtualHost>
```
