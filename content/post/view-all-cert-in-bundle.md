---
title: "View All SSL Cert in a Bundle File"
date: 2020-07-15T00:20:25+08:00
tags: [sslcert, tlscert, bundle, oneliner]
draft: false
---

Oneliner solution using the following command:
```
~$  openssl crl2pkcs7 -nocrl -certfile www.example.org-bundle.crt | openssl pkcs7 -print_certs -noout
```

With sample output as follows:
```
~$  openssl crl2pkcs7 -nocrl -certfile www.example.org-bundle.crt | openssl pkcs7 -print_certs -noout
subject=/OU=Domain Control Validated/OU=PositiveSSL/CN=www.example.org
issuer=/C=GB/ST=Greater Manchester/L=Salford/O=COMODO CA Limited/CN=COMODO RSA Domain Validation Secure Server CA

subject=/C=GB/ST=Greater Manchester/L=Salford/O=COMODO CA Limited/CN=COMODO RSA Domain Validation Secure Server CA
issuer=/C=GB/ST=Greater Manchester/L=Salford/O=COMODO CA Limited/CN=COMODO RSA Certification Authority

subject=/C=GB/ST=Greater Manchester/L=Salford/O=COMODO CA Limited/CN=COMODO RSA Certification Authority
issuer=/C=SE/O=AddTrust AB/OU=AddTrust External TTP Network/CN=AddTrust External CA Root

subject=/C=SE/O=AddTrust AB/OU=AddTrust External TTP Network/CN=AddTrust External CA Root
issuer=/C=SE/O=AddTrust AB/OU=AddTrust External TTP Network/CN=AddTrust External CA Root
```

Details and other solutions in https://serverfault.com/questions/590870/how-to-view-all-ssl-certificates-in-a-bundle

