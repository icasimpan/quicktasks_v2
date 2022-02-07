---
title: "Create SAN TLS/SSL Cert"
date: 2020-06-07T00:20:25+08:00
tags: [sslcert, tlscert, san]
draft: false
---

1. Create san.conf
```
[ req ]
default_bits = 4096
prompt = no
encrypt_key = no
default_md = sha256
distinguished_name = dn
req_extensions = req_ext
  
[ dn ]
CN = example.org
emailAddress = webmaster@example.org
O = Example Memorial Hospital
OU = Example Memorial Hospital
L = Chicago
ST = Illinois
C = US
  
[ req_ext ]
subjectAltName = DNS: example.org, DNS: www.example.org
```

NOTE: Do not leave out OU. Otherwise, you will see the error below. Copy the value of O if you don't have OU
```
problems making Certificate Request
139909090453160:error:0D07A098:asn1 encoding routines:ASN1_mbstring_ncopy:string too short:a_mbstr.c:147:minsize=1
```

2. Generate
```
icasimpan@example:~$ openssl req -new -config san.conf -keyout example.org.key -out san.example.org.csr
Generating a 4096 bit RSA private key
...........++
...................................................................................................................++
writing new private key to 'example.org.key'
```

3. Verify if correct information are there. One verifier is  https://www.sslshopper.com/csr-decoder.html

More details in https://ethitter.com/2016/05/generating-a-csr-with-san-at-the-command-line/
