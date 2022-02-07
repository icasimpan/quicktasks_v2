---
title: "Cert Chain for a multi-domain Comondo Positive SSL"
date: 2020-06-07T00:20:25+08:00
tags: [sslcert, tlscert, csr, cert-chain, comodo, comodo-cert, positive-ssl]
draft: false
---

```
cat AddTrustExternalCARoot.crt COMODORSAAddTrustCA.crt COMODORSADomainValidationSecureServerCA.crt >> cert-chain.pem
```
NOTE: This is the inverse of "Creating an SSL Bundle out of Comodo Positive SSL" which seems valid as well. Not sure if it's valid in any order.
