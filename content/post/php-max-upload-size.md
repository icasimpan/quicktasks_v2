---
title: "php max upload size"
date: 2019-09-28T00:20:25+08:00
tags: [php, max-upload-size]
draft: false
---

1. Check first where php.ini is (create a page that dumps "phpinfo()")
2. Edit upload_max_filesize=10M (assuming 10M is the requested limit)
2.1 Given that 'upload_max_filesize > 8M' edit as well "post_max_size"
3. Restart apache (reload doesn't change the setting)
