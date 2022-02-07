---
title: "Overriding Hugo Theme Files"
date: 2020-08-11T23:17:11+08:00
tags: [hugo, override, theme]
draft: false
---

In most cases, themes do not exactly match what you want in your site.


For instance, you have an old version of jquery is in the theme:
```
/themes/themename/static/js/jquery.min.js
```

Override it by copying the new version as:
```
/static/js/jquery.min.js
```

So as you may already have figured out by now, you just have to remove the path `/themes/themename` and that's the override equivalent.

See details in https://bwaycer.github.io/hugo_tutorial.hugo/themes/customizing/
