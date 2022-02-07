---
title: "String manipulation: get characters left in a variable"
date: 2019-09-21T00:20:25+08:00
tags: [ansible, string]
draft: false
---

```
- name: Display Result In Loop
   debug: msg="Version is {{ result.stdout[:5] }}"
```
See https://stackoverflow.com/questions/32091667/ansible-fetch-first-few-character-of-a-register-value
