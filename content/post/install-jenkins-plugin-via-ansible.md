---
title: "Install Jenkins Plugin via Ansible"
date: 2020-07-06T00:20:25+08:00
tags: [jenkins, jenkinsci, ci, install, plugin, ansible]
draft: false
---

```
example@user:/opt/ansible-playbooks$ cat vars/jenkins.yml
## Search names from https://plugins.jenkins.io/
jenkins_plugins:
  - git
  - hipchat
  - log-parser
  - mask-passwords
  - ssh-agent
  - ssh
```

