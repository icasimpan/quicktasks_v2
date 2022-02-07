---
title: "GZip Compression Check in curl"
date: 2019-09-21T00:20:25+08:00
tags: [curl, headers, gzip, gzip-compression, compression]
draft: false
---

```
icasimpan@icasimpan.local:~$ curl -H "Accept-Encoding: gzip" -I -udemo:demo http://example.com
HTTP/1.1 200 OK
Date: Wed, 04 Oct 2017 15:25:48 GMT
Server: Apache/2.4.18 (Ubuntu)
X-Drupal-Cache: HIT
Etag: "1507130489-1"
Content-Language: en
X-Frame-Options: SAMEORIGIN
Link: </node/171>; rel="shortlink",</home>; rel="canonical"
X-Generator: Drupal 7 (http://drupal.org)
Cache-Control: public, max-age=60
Last-Modified: Wed, 04 Oct 2017 15:21:29 GMT
Expires: Sun, 19 Nov 1978 05:00:00 GMT
Vary: Cookie,Accept-Encoding
Content-Encoding: gzip
Content-Type: text/html; charset=utf-8
```

Look at "Content-Encoding". It says 'gzip'.
