---
title: "Php Array_Map Function"
date: 2022-03-12T00:20:25+08:00
tags: [php, php-coding]
draft: false
---
Suppose that you have an array that holds the lengths of squares:
```
<?php

$lengths = [10, 20, 30];
```

To calculate the areas of the squares, you may come up with the `foreach` loop like this:
```
<?php

$lengths = [10, 20, 30];

// calculate areas
$areas = [];

foreach ($lengths as $length) {
	$areas[] = $length * $length;
}

print_r($areas);
```
Output:
```
Array
(
    [0] => 100
    [1] => 400
    [2] => 900
)
```

# Using array_map()
```
<?php

$lengths = [10, 20, 30];

// calculate areas
$areas = array_map(function ($length) {
	return $length * $length;
}, $lengths);


print_r($areas);
```
See details in https://www.phptutorial.net/php-tutorial/php-array_map/
