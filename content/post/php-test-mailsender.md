---
title: "php mailsender"
date: 2019-09-28T00:20:25+08:00
tags: [php, mail, test-mail]
draft: false
---

A quick way to test mail sending via php:
```
<?php
 ini_set( 'display_errors', 1 );
 error_reporting( E_ALL );
 $from = "webmaster@example.com";
 $to = "me@example.com";
 $subject = "PHP Mail Test script";
 $message = "This is a test to check the PHP Mail functionality";
 $headers = "From:" . $from;
 mail($to,$subject,$message, $headers);
 echo "Test email sent";
?>
```
