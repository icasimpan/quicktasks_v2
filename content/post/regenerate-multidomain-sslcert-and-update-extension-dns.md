---
title: "Regenerate Multi-Domain SSL Cert and update extension DNS"
date: 2020-07-27T00:20:25+08:00
tags: [sslcert, tlscert, san, regenerate]
draft: false
---


Scenario:
Cert was purchased originally for 5 years. Cert with that validity need to revalidate every 2 years as per https://www.digicert.com/shortening-validity-periods-for-ov-dv-certificates

However, the cert has been configured with the following SAN: 
* www.example1.com
* www.example2.com


Problem:
www.example2.com is no longer part of the same hosting and doesn't need the cert.
However, 'example1.com' should replace it.


Solution:
Regenerate the cert and add the domains "www.example1.com" and "example1.com".

NOTE: Not sure yet, but I think this is valid only when the main domain for the cert is "www.example1.com". Had it been "www.example2.com", the cert would have been invalid.
