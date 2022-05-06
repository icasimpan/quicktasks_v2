---
title: "Quick HTTP Server Using NPM Module"
date: 2022-05-05T00:20:25+08:00
tags: [nodejs, server]
draft: false
---

If you ever need to serve your current directory via http for some reason, here's an NPM module solution
```
~$ yarn global add serve
```

And run this (it's automatically added to ~/.bashrc or equivalent on your shell):
```
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
```

and run
```
~$ serve
```

or 
```
~$ serve <the_folder_name>
```

Then access http://localhost:3000 (but depending on what's shown on screen)

More details in https://www.npmjs.com/package/serve
