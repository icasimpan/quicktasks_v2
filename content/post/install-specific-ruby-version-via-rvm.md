---
title: "Install Specific Ruby Version via RVM"
date: 2022-02-15T23:18:11+08:00
tags: [ruby, ruby-on-rails, install]
draft: false
---

# Check list of known versions
```
~$ rvm list known
```

# Install specific version
```
~$ rvm install ruby-2.7.2
```

# Check installed version
```
~$ rvm list
=* ruby-2.7.2 [ x86_64 ]
   ruby-3.0.0 [ x86_64 ]

# => - current
# =* - current && default
#  * - default
```

# Switch versions
```
~$ rvm use ruby-3.0.0
Using /home/user/.rvm/gems/ruby-3.0.0
```
