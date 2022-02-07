---
title: "key_value table missing"
date: 2020-06-06T00:20:25+08:00
tags: [drupal, key_value, troubleshooting]
draft: false
---

You just received a D8 database dump and it is said to be complete.
However, you see this error:

```
[notice] Missing database table: key_value
```

Said table is part of drupal8 so it can't go missing.
It could be that the table names for this site has prefix.
Check using the command:
{code}
drush sql-drush "show tables;"|grep -i key_value
{code}

If you see something like:
{code}
bash-4.2$ drush sql-query "show tables;"|grep -i key_value
kb_key_value
kb_key_value_expire
{code}

Then the table has a prefix. In a sample [settings.local.php](https://ismael.casimpan.com/quicktasks-drupal/settings-php-sample-settings-local/) (or even in settings) 
update this section:
```
  'prefix' => '',
```
to 
```
  'prefix' => 'kb_',
```
Of course, replace the actual prefix with what you are actually seeing.
