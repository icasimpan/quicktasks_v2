---
title: "Creating an SSL Bundle out of Comodo Positive SSL"
date: 2020-06-07T00:20:25+08:00
tags: [sslcert, tlscert, csr, comodo, comodo-cert, positivessl, ssl-bundle]
draft: false
---

```
www.example.org.crt COMODORSADomainValidationSecureServerCA.crt COMODORSAAddTrustCA.crt AddTrustExternalCARoot.crt >> www.example.org-bundle.crt
```

See details in https://helpdesk.ssls.com/hc/en-us/articles/203427642-How-to-install-a-SSL-certificate-on-a-NGINX-server
