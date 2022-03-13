---
title: "Php Variable Variables"
date: 2022-03-12T00:20:25+08:00
tags: [php, php-coding]
draft: false
---

This is quite confusing but as soon as you see the logic, it would make sense.

Say you have this code:

```
<?php

$my_var= 'title';
$$my_var = 'PHP variable variables'; // $my_var has a value of 'title'. So the 2nd '$' makes it $title
echo $title;                         // ...so, YOU see now where you will get the variable $title
```

Output is:
```
PHP variable variables
```


See details in https://www.phptutorial.net/php-tutorial/php-variable-variables/
