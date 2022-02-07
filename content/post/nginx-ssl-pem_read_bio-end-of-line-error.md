---
title: "Nginx SSL PEM_read_bio End of Line Error"
date: 2020-07-27T00:20:25+08:00
tags: [sslcert, tlscert, nginx, troubleshooting, error, network-solutions, network-solutions-cert ]
draft: false
---

We had this ssl cert issued by Network Solutions
```
root@www:/etc/nginx/conf.d/ssl/example-2020# unzip -l EXAMPLE.ORG.zip
Archive:  EXAMPLE.ORG.zip
  Length      Date    Time    Name
---------  ---------- -----   ----
     2150  2020-07-14 16:59   DV_NetworkSolutionsDVServerCA2.crt
Network Solutions DV Intermediate CA
     2093  2020-07-14 16:59   DV_USERTrustRSACertificationAuthority.crt
Network Solutions DV Intermediate CA 2
     2174  2020-07-14 16:59   EXAMPLE.ORG.crt
Domain certificate
---------                     -------
     6417                     3 files
```

I created a bundle as this was for Nginx
cat EXAMPLE.ORG.crt DV_NetworkSolutionsDVServerCA2.crt DV_USERTrustRSACertificationAuthority.crt  > www.example.org-bundle.crt


When I tried verifying, I got this error:
```
root@www:/etc/nginx/sites-available# openssl crl2pkcs7 -nocrl -certfile /etc/nginx/conf.d/ssl/example-2020/www.example.org-bundle.crt | openssl pkcs7 -print_certs -noout
error reading the file, /etc/nginx/conf.d/ssl/example-2020/www.example.org-bundle.crt
error loading certificates
140490570237584:error:0906D066:PEM routines:PEM_read_bio:bad end line:pem_lib.c:804:
unable to load PKCS7 object
140226013042320:error:0906D06C:PEM routines:PEM_read_bio:no start line:pem_lib.c:696:Expecting: PKCS7
```

I fixed it by using a now defunct site's blog whiched fortunately was still accessible using archive.org.
https://web.archive.org/web/20130329092455/http://danalloway.com/nginx-ssl-pem_read_biobad-end-line-error/

It basically says that the line-ending was problematic. So all I need to do was do manual correction on the output file "www.example.org-bundle.crt"
and it's fixed.

Kudos to https://www.endpoint.com/blog/2013/02/05/network-solutions-nginx-ssl-certificate-installation
