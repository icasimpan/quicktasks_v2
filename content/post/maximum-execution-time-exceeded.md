---
title: "PHP Fatal Error: Maximum Execution time exceeded"
date: 2020-02-07T00:20:25+08:00
tags: [php, php-error, fatal-error]
draft: false
---

If you're seeing an error in your log:

```
PHP Fatal error: Maximum execution time of 240 seconds exceeded in </path/to/any_file.php> on line xx
```

Then you may need to edit your php.ini and update the variable 'maximum_execution_time'. Don't forget to restart your web service.

If issue persist, then overrides is being done in code. Search it as follows and fix accordingly:

```
grep -Ri max_execution_time ./*
```
