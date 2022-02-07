---
title: "Check Certificates Info"
date: 2020-06-07T00:20:25+08:00
tags: [sslcert, tlscert, csr, troubleshoot]
draft: false
---

* Check a Certificate Signing Request (CSR)
```
openssl req -text -noout -verify -in CSR.csr
```

* Check a private key
```
openssl rsa -in privateKey.key -check
```

* Check a certificate
```
openssl x509 -in certificate.crt -text -noout
```

* Check a PKCS#12 file (.pfx or .p12)
```
openssl pkcs12 -info -in keyStore.p12
```

See https://www.sslshopper.com/csr-decoder.html or https://www.sslshopper.com/certificate-decoder.html
