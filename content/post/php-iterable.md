---
title: "Php Iterable"
date: 2022-03-12T00:20:25+08:00
tags: [php, php-coding]
draft: false
---

An iterable is any value which can be looped through with a foreach() loop.

The iterable pseudo-type was introduced in PHP 7.1, and it can be used as a data type for function arguments and function return values.

Example
```
<?php
function printIterable(iterable $myIterable) {
  foreach($myIterable as $item) {
    echo "{$item}\n";
  }
}

$arr = ["a", "b", "c"];
printIterable($arr);
?>
```

This prints:
```
a
b
c
```

Return an iterable:
```
<?php
function getIterable():iterable {
  return ["a", "b", "c"];
}

$myIterable = getIterable();
foreach($myIterable as $item) {
  echo $item;
}
?>
```

See details in https://www.w3schools.com/php/php_iterables.asp or https://www.php.net/manual/en/language.types.iterable.php
