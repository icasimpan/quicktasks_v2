---
title: "Install Ruby and Rails on a Gemset"
date: 2022-02-15T09:17:11+08:00
tags: [ruby, ruby-on-rails, install]
draft: false
---

Gems Ruby applications or libraries. In Rails, you install gems so you would write less code.  

# Creating Gemset
To make it easy to manage, create gemset. Think of it as a group of libraries that you can switch to depending on situation.

```
~$ rvm gemset list

gemsets for ruby-2.7.0 (found in /home/user/.rvm/gems/ruby-2.7.0)
=> (default)
   global
   learning_ror
```

# Check location of your gemset(s)
```
~$ rvm gemdir
/home/user/.rvm/gems/ruby-2.7.0
```

# Switch gemset
```
~$ rvm gemset use learning_ror
Using ruby-2.7.0 with gemset learning_ror
~$ rvm gemset list

gemsets for ruby-2.7.0 (found in /home/user/.rvm/gems/ruby-2.7.0)
   (default)
   global
=> learning_ror

~$ rvm gemset dir
/home/user/.rvm/gems/ruby-2.7.0@learning_ror
```

# Create your gemset
```
~$ rvm gemset create gemset_name
```
