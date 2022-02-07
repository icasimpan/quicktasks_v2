---
title: "Errors in Project NAMI (wordpress on mssql)"
date: 2019-09-28T23:17:11+08:00
tags: [wordpress, project-nami, nami, mssql, wordpress-mssql]
draft: false
---

```
Warning: file_put_contents(C:/inetpub/sites/example-wimp13/wp-includes/fields_map.parsed_types.php): failed to open stream: Permission denied in C:\inetpub\sites\example-wimp13\wp-includes\fields_map.php on line 202
Warning: include(C:\inetpub\sites\error_page.php): failed to open stream: No such file or directory in C:\inetpub\sites\example-wimp13\wp-includes\fields_map.php on line 209
Warning: include(): Failed opening 'C:\inetpub\sites\error_page.php' for inclusion (include_path='.;C:\php\pear') in C:\inetpub\sites\example-wimp13\wp-includes\fields_map.php on line 209
```

Fix is to add the file "wp-includes\fields_map.parsed_types.php" with content 

```
<?php return array ( '' => array ( ), ) ?>
```
and add write permission to IUSR. See details in https://github.com/ProjectNami/projectnami/issues/152

