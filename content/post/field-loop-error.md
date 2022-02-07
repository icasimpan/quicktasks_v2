---
title: "Field Loop Error"
date: 2019-09-21T00:20:25+08:00
tags: [ansible, error, loop]
draft: false
---

If you see the error below:

```
ERROR! The field 'loop' is supposed to be a string type, however the incoming data structure is a <class 'ansible.parsing.yaml.objects.AnsibleSequence'>
```

Upgrade your ansible to at least version 2.5. The 'loop' keyword is defined starting that version. See https://stackoverflow.com/questions/49680809/ansible-loop-error
