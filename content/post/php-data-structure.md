---
title: "Php Data Structure"
date: 2022-03-02T00:20:25+08:00
tags: [php, php-coding]
draft: false
---

There's what is called a "Data Structure" or DS package available in [packagist](https://packagist.org/packages/php-ds/php-ds).

Install
```
~$ cd /an/isolated/directory
~$ composer require php-ds/php-ds
~$ composer install
```

Try this code:
```
<?php
require __DIR__ . '/vendor/autoload.php';


$stack = new \Ds\Stack();
//$stack = new Stack();

$stack->push("a");
$stack->push("b");
$stack->push("c");

var_dump($stack->pop());
var_dump($stack->pop());
var_dump($stack->pop());
?>
```

See https://www.php.net/manual/en/book.ds.php or https://medium.com/@rtheunissen/efficient-data-structures-for-php-7-9dda7af674cd
