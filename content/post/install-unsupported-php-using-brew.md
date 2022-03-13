---
title: "Install Unsupported PHP using Brew"
date: 2022-03-13T00:20:25+08:00
tags: [install, mac, brew]
draft: false
---

Brew by default doesn't install unsupported software versions.
Like at this time, php7.3 was no longer supported.

Installing it disables it and install instead the latest version (8.1.3 at this time).
```
~$ brew install php@7.3
Running `brew update --preinstall`...
==> Auto-updated Homebrew!
Updated 2 taps (homebrew/core and homebrew/cask).
==> Updated Formulae
Updated 2 formulae.
==> Updated Casks
Updated 6 casks.

Error: php@7.3 has been disabled because it is a versioned formula!

~$ php --version
PHP 8.1.3 (cli) (built: Mar  1 2022 01:17:32) (NTS)
Copyright (c) The PHP Group
Zend Engine v4.1.3, Copyright (c) Zend Technologies
    with Zend OPcache v8.1.3, Copyright (c), by Zend Technologies
```

# Proper instalation of unsupported packages
```
~$ brew tap shivammathur/php
==> Tapping shivammathur/php
Cloning into '/usr/local/Homebrew/Library/Taps/shivammathur/homebrew-php'...
remote: Enumerating objects: 9826, done.
remote: Counting objects: 100% (48/48), done.
remote: Compressing objects: 100% (30/30), done.
remote: Total 9826 (delta 33), reused 27 (delta 18), pack-reused 9778
Receiving objects: 100% (9826/9826), 1.28 MiB | 811.00 KiB/s, done.
Resolving deltas: 100% (7564/7564), done.
Tapped 9 formulae (57 files, 1.8MB).
```
then
```
~$ brew install shivammathur/php/php@7.3
```

Then force link it
```
brew link --overwrite --force shivammathur/php/php@7.3
```

Add to PATH in `.bash_profile` and re-source
```
/usr/local/opt/php@7.3/bin:/usr/local/opt/php@7.3/sbin:/usr/local/bin
```

See further details in https://github.com/shivammathur/homebrew-php

