---
title: "Wildcard LetsEncrypt"
date: 2020-06-07T00:20:25+08:00
tags: [sslcert, tlscert, letsencrypt, wildcard]
draft: false
---

```
yum install certbot.noarch -y
 
 
certbot -d *.example.com \
--manual \
--preferred-challenges \
dns certonly \
--server https://acme-v02.api.letsencrypt.org/directory
 
...
...
create the TXT DNS record
```

NOTE: In creating the cert, make sure to wait for 5minutes or better check in another terminal session if the txt record is now visible. Otherwise, cert creation will fail.

Some details in https://wicowen.github.io/2018-0315-1400-Enable-Lets-encrypt-wildcard-certificate-in-CentOS-7/

In Ubuntu/Debian check https://medium.com/@saurabh6790/generate-wildcard-ssl-certificate-using-lets-encrypt-certbot-273e432794d7
```
30 2 * * * /usr/bin/certbot renew >> /var/log/letsencrypt-renew.log
```
Some details in https://www.digitalocean.com/community/tutorials/how-to-secure-apache-with-let-s-encrypt-on-ubuntu-16-04

There's an automated and better way, see https://developerinsider.co/how-to-create-and-auto-renew-lets-encrypt-wildcard-certificate/
