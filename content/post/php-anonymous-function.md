---
title: "Php Anonymous Function"
date: 2022-03-12T00:20:25+08:00
tags: [php, php-coding]
draft: false
---

# Overview
In contrast to a named function like:
```
<?php
function multiply($x, $y)
{
	return $x * $y;
}
```

An anonymous or unnamed-function, well has no name:
```
<?php
function ($x, $y) {
	return $x * $y;
}; //closing semicolon here is mandatory.
```
NOTE: semicolon after the closing curly bracket is mandatory as it is treated as an expression by php

Since it is unnamed, you need to store it's value in a variable and using the variable as function name:
```
<?php
// ...

$multiply = function ($x, $y) {
	return $x * $y;
};

echo $multiply(10, 20);  // call the anonymous function
```

# Use of variables in parent scope

It cannot just use the parent scope variable, you need to include it via 'use':
```
<?php

$message = 'Hi';
$say = function () use ($message) {
	echo $message;
};

$say();
```

Note that the $message is passed to the anonymous function by value, not by reference.

To use the variable by reference, put '&' before each variable name to 'use':
```
<?php

$message = 'Hi';
$say = function () use (&$message) {
	$message = 'Hello';
	echo $message;
};

$say();
echo $message;
``` 

NOTE: This is abridged from original https://www.phptutorial.net/php-tutorial/php-anonymous-functions/

See also https://ismael.casimpan.com/quicktasks/php-arrow-function/
