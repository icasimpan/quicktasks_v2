---
title: "Python Debugging"
date: 2022-05-05T00:20:25+08:00
tags: [python, debugging]
draft: false
---

Use pdb module in debugging python:

```
$ python3 -m pdb pdb_example.py
```

and something like this:
```
student@ubuntu:~$ python3 -m pdb pdb_example.py
> /home/student/pdb_example.py(1)<module>()
-> class Student:
(Pdb) continue
0
1
2
3
4
The program finished and will be restarted
> /home/student/pdb_example.py(1)<module>()
-> class Student:
(Pdb)
```

See https://hub.packtpub.com/debugging-and-profiling-python-scripts-tutorial
