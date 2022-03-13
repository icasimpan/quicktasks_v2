---
title: "Php Arrow Function"
date: 2022-02-21T00:20:25+08:00
tags: [php, php-coding]
draft: false
---

As of php7.4, php arrow function was added as a more concise syntax for anonymous functions.

Basic syntax:
```
fn (arguments) => expression;
```

Is functionally equivalent to the following anonymous function:
```
function(arguments) { return expression; }
```

Unlike anonymous functions, arrow functions can automatically access variables from their parent scopes.

```
<?php

function multiplier($x)
{
    return fn ($y) => $x * $y;
}

$double = multiplier(2);

echo $double(10); // 200
```

See also https://ismael.casimpan.com/quicktasks/php-anonymous-function/

Reference:
* https://www.php.net/manual/en/functions.arrow.php
* https://www.phptutorial.net/php-tutorial/php-arrow-functions/
