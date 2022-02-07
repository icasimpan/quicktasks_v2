---
title: "Copy Files To and From Remote Locations"
date: 2019-09-21T00:20:25+08:00
tags: [ansible, copy-file, copy, remote]
draft: false
---

```
- name: Move foo to bar
  command: mv /path/to/foo /path/to/bar
```

or check first and do a copy if it exist

```
- name: stat foo
  stat: path=/path/to/foo
  register: foo_stat
 
- name: Move foo to bar
  command: mv /path/to/foo /path/to/bar
  when: foo_stat.stat.exists
```

and, for ansible 2.0+, you can do:

```
- name: Copy files from foo to bar
  copy: remote_src=True src=/path/to/foo dest=/path/to/bar
```

Details in https://stackoverflow.com/questions/24162996/how-to-move-rename-a-file-using-an-ansible-task-on-a-remote-system
