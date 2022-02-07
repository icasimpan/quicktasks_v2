---
title: "Install PHP Module Inside Dockerfile"
date: 2019-09-21T00:20:25+08:00
tags: [docker, container, module, dockerfile]
draft: false
---

Add this to Dockerfile
```
RUN docker-php-ext-install mysqli
```

See details in https://github.com/docker-library/php/issues/279
