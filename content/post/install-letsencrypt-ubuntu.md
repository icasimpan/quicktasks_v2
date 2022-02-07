---
title: "Install LetsEncrypt in Ubuntu"
date: 2020-06-07T00:20:25+08:00
tags: [sslcert, tlscert, letsencrypt, ubuntu]
draft: false
---

```
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update
sudo apt-get install python-certbot-apache
sudo certbot --apache -d one.example.com -d two.example.com
```

If the above don't work, try this:
```
sudo apt-get update
sudo apt-get install software-properties-common
sudo add-apt-repository universe
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update
sudo apt-get install certbot python-certbot-nginx
```

Put the following in root crontab (sudo crontab -e)

```
30 2 * * * /usr/bin/certbot renew >> /var/log/letsencrypt-renew.log
```
Some details in https://www.digitalocean.com/community/tutorials/how-to-secure-apache-with-let-s-encrypt-on-ubuntu-16-04
