---
title: "Curl with Credentials File"
date: 2020-05-12T00:20:25+08:00
tags: [curl, authentication, credentials, credentials-file]
draft: false
---

```
curl --config /path/to/config-file <url_here>
```

where config-file has this format:
```
-u username:password
```
