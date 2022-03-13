---
title: "Php Callable Function"
date: 2022-03-12T00:20:25+08:00
tags: [php, php-coding]
draft: false
---

Callbacks can be denoted by the "callable" type declaration.

Example:
```
icasimpan$ nl -ba callable_example.php
     1	<?php
     2	function printFormatted(callable $format, $str) {
     3	  echo $format($str);
     4	  echo "<br>";
     5	}
     6	
     7	function exclaim($str) { return $str . "!"; }
     8	printFormatted("exclaim", "Hello World");
     9	?>
```

This outputs "Hello World!".

* Line 7 is the callable function "exclaim"
* Line 2 is the function "printFormatted" with callable function parameter
* Line 8 triggers the function "printFormated" which basically pass the name 'in plain string' with the parameter "Hello World"


*NOTES*
* Line 2 function "printFormatted" parameters  are actually the signature of the callable function. See line 3
* Means by which callable function is called is via "echo". See line 3 
* Line 7 is the callable function
* Line 8 is the call to function that calls the callable function "exclaim".

See further details in https://www.php.net/manual/en/language.types.callable.php and https://www.w3schools.com/php/keyword_callable.asp
