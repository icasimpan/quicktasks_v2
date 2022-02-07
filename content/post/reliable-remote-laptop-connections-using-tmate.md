---
title: "Reliable Remote Laptop Connections using tmate"
date: 2020-07-31T00:20:25+08:00
tags: [troubleshooting, tools]
draft: false
---

If you even have a need to connect to a remote laptop, `tmate` is the solution.
Had tried this personally in MacOS Catalina (10.15.5) and it works fine.

```
brew install tmate
```

I encountered this error though after installation:
```
$ tmux
dyld: Library not loaded: /usr/local/lib/libevent-2.0.5.dylib
  Referenced from: /usr/local/bin/tmate
  Reason: image not found
Trace/BPT trap: 5
```

Solution is to uninstall and re-install
```
brew uninstall --force tmate
brew install tmate
```

So in summary, one installs tmux and the other simply connects to it via ssh.

Try it. More details in https://tmate.io/
