---
title: "Declaring Children Labels in Hosts File"
date: 2019-09-21T00:20:25+08:00
tags: [ansible, hosts]
draft: false
---

```

[dev_server]
...
...
...
 
[devtools_internal]
...
...
...
 
[dev_needed:children]
dev_server
devtools_internal

```
