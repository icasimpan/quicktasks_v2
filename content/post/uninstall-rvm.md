---
title: "Uninstall RVM"
date: 2022-02-15T10:17:11+08:00
tags: [ruby, ruby-on-rails, rvm]
draft: false
---

If you no longer wish to use RVM, you can uninstall it by first removing 
the script calls in your .bashrc file and then removing the RVM files.

First, remove the script calls with a text editor like nano:
```
~$ nano ~/.bashrc
```

Scroll down to where you see the RVM lines of your `~/.bashrc` file:
```
...
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
Delete the lines, then save and close the file.
```

Next, remove RVM with the following command:
```
~$ rm -rf ~/.rvm
```
