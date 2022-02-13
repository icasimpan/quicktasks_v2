---
title: "Pythonic Code Using Enumerate"
date: 2022-02-12T00:20:25+08:00
tags: [python, pythonic, programming]
draft: false
---

Use `enumerate` to iterate to each list's element
```
>>> # Pythonic Example
>>> animals = ['cat', 'dog', 'moose']
>>> for i, animal in enumerate(animals):
...     print(i, animal)
...
0 cat
1 dog
2 moose
```

If the index is not important, use "_" in place of "i":
```
>>> # Pythonic Example
>>> animals = ['cat', 'dog', 'moose']
>>> for _, animal in enumerate(animals):
...     print(animal)
... 
cat
dog
moose
```

If you're familiar with shell scripting, this is similar to one way to iterate in bash:
```
strings="
the
quick
brown
fox
"
for x in $strings; do
    echo $x
done

the
quick
brown
fox
```
