---
title: "One Liner CSR Creation"
date: 2020-06-07T00:20:25+08:00
tags: [sslcert, tlscert, csr, oneliner]
draft: false
---

```
openssl req -new -newkey rsa:2048 -nodes -out this.example.com.csr -keyout this.example.com.key -subj "/C=PH/ST=Cebu/L=Cebu/O=Example Organization Cebu/OU=IT Department/CN=this.example.com"
```

What to use in the "-subj' as per https://www.endpoint.com/blog/2014/10/30/openssl-csr-with-alternative-names-one

* C  = Country
* ST = State/Province
* L  = City
* O  = Organization
* OU = Organizational Unit
* CN = Common Name (main domain the certificate would cover
