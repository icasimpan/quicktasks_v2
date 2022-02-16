---
title: "Rails errors GemNotFoundException"
date: 2022-02-15T11:17:11+08:00
tags: [ruby, ruby-on-rails, rvm]
draft: false
---

You recently installed `rails` but since you're still learning, you did a lot of stuffs.
One day, you got the following error:

```
~$ rails --version
Traceback (most recent call last):
        2: from /usr/local/bin/rails:23:in `<main>'
        1: from /usr/lib/ruby/2.7.0/rubygems.rb:294:in `activate_bin_path'
/usr/lib/ruby/2.7.0/rubygems.rb:275:in `find_spec_for_exe': can't find gem railties (>= 0.a) with executable rails (Gem::GemNotFoundException)
```

Probably, you forgot that you switched `gemset`?

# Check contents of your `gemdir`
```
~$ cd `rvm gemdir`
~$ pwd
/home/user/.rvm/gems/ruby-2.7.2@newname
~$ ll
total 24
drwxr-xr-x 5 user user 4096 Feb 16 11:54 ./
drwxr-xr-x 8 user user 4096 Feb 16 11:54 ../
drwxr-xr-x 2 user user 4096 Feb 16 11:54 bin/
drwxr-xr-x 2 user user 4096 Feb 16 11:54 cache/
-rw-r--r-- 1 user user  516 Feb 16 11:54 environment
drwxr-xr-x 2 user user 4096 Feb 16 11:54 wrappers/
```
The above directory listing shows no gems are installed yet.

# Check version you need
```
~$ gem search '^rails$' --all
```

# Install Rails
```
~$ gem install rails -v  7.0.2.2
```

# Check contents of gemdir again
```
~$ ll `rvm gemdir`
total 44
drwxr-xr-x 10 user user 4096 Feb 16 12:04 ./
drwxr-xr-x  9 user user 4096 Feb 16 12:01 ../
drwxr-xr-x  2 user user 4096 Feb 16 12:04 bin/
drwxr-xr-x  2 user user 4096 Feb 16 12:04 build_info/
drwxr-xr-x  2 user user 4096 Feb 16 12:04 cache/
drwxr-xr-x 41 user user 4096 Feb 16 12:04 doc/
-rw-r--r--  1 user user  531 Feb 16 12:01 environment
drwxr-xr-x  3 user user 4096 Feb 16 12:04 extensions/
drwxr-xr-x 41 user user 4096 Feb 16 12:04 gems/
drwxr-xr-x  2 user user 4096 Feb 16 12:04 specifications/
drwxr-xr-x  2 user user 4096 Feb 16 12:04 wrappers/
```
Notice that the directory contents are different now and rails will no longer show an error
```
~$ rails --version
Rails 7.0.2.2
```
