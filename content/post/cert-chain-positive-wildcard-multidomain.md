---
title: "Cert Chain for Positive wildcard multi-domain"
date: 2020-06-07T00:20:25+08:00
tags: [sslcert, tlscert, csr, cert-chain, positive-wildcard, multidomain, wildcard-multidomain, comodo, comodo-cert]
draft: false
---

Given this list of files given by Comodo
```
Root CA Certificate - AddTrustExternalCARoot.crt
Intermediate CA Certificate - USERTrustRSAAddTrustCA.crt
Intermediate CA Certificate - SectigoRSADomainValidationSecureServerCA.crt
Your PositiveSSL Multi-Domain Certificate - 285695299.crt
```
Do the following:
```
cat 285695299.crt SectigoRSADomainValidationSecureServerCA.crt USERTrustRSAAddTrustCA.crt AddTrustExternalCARoot.crt >> cert-chain.pem
```
