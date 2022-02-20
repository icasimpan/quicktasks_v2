---
title: "Install Ruby on Rails"
date: 2022-02-15T23:17:11+08:00
tags: [ruby, ruby-on-rails, install]
draft: false
---

# Install RVM + Rails
Manage Ruby versions (production or not using RVM).
Trust me, been there and installing it otherwise is not a walk in the park...

```
~$ gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
~$ curl -sSL https://get.rvm.io | bash -s stable
~$ curl -sSL https://get.rvm.io | bash -s stable --rails
```

# RVM Already Installed But Without Rails

Make sure `gem` is installed under ~/.rvm. You should see something like below:
```
~$ which gem
/home/user/.rvm/rubies/ruby-3.0.0/bin/gem
```

and install rails
```
~$ gem install rails
```

Once installation is complete, you should be able to verify `rails` version installed. Something like this:
```
~$ rails --version
Rails 7.0.2.2
```

See updated version in [RVM website](https://rvm.io/)
