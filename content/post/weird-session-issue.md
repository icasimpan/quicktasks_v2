---
title: "Weird session issue in drupal"
date: 2020-02-11T00:18:01+08:00
tags: [drupal, session, php]
draft: false
---

Was seeing some session issue as follows:
```
[me@example default]$ cd /var/www/example.com/docroot
[me@example docroot]$ drush st

session_set_save_handler(): Cannot change save handler when headers already sent session.inc:242                                                                         [warning]
session_id(): Cannot change session id when headers already sent session.inc:266                                                                                         [warning]
session_name(): Cannot change session name when headers already sent in drupal_settings_initialize() (line 831 of                                                        [warning]
/var/www/example.com/docroot/includes/bootstrap.inc).
 Drupal version                  :  7.69                                             
 Site URI                        :  http://default                                   
 Database driver                 :  mysql                                            
 Database hostname               :  localhost                                        
 Database username               :  <REDACTED>                                     
 Database name                   :  <REDACTED>                                      
 Database                        :  Connected                                        
 Drupal bootstrap                :  Successful                                       
 Drupal user                     :                                                   
 Default theme                   :  bootstrap_examplesite                            
 Administration theme            :  seven                                            
 PHP configuration               :  /etc/php.ini                                     
 PHP OS                          :  Linux                                            
 Drush script                    :  /usr/local/bin/drush                             
 Drush version                   :  8.2.3                                            
 Drush temp directory            :  /tmp                                             
 Drush configuration             :                                                   
 Drush alias files               :                                                   
 Install profile                 :  standard                                         
 Drupal root                     :  /var/www/example.com/docroot  
 Drupal Settings File            :  sites/default/settings.php                       
 Site path                       :  sites/default                                    
 File directory path             :  sites/default/files                              
 Private file directory path     :  /var/www/sites/example.com/private-files 
 Temporary file directory path   :  /var/www/sites/example.com/private-temp  
```

After a lot of cross-checking/troubleshooting/debugging, initial issue was pinpointed at a blank line (see line 18 below):
```
[me@example default]$ nl -ba /var/www/example.com/docroot/sites/default/settings.local.php 
     1  <?php
     2  $databases = array(
     3    'default' => array(
     4      'default' => array(
     5        'driver' => 'mysql',
     6        'database' => '<REDACTED>',
     7        'username' => '<REDACTED>',
     8        'password' => '<REDACTED>',
     9        'host' => 'localhost',
    10        'prefix' => '',
    11      ),
    12    ),
    13  );
    14  
    15  $conf['file_temporary_path'] = '/var/www/example.com/private-temp';
    16  $conf['file_private_path'] = '/var/www/example.com/private-files';
    17  ?>
    18  
```

BUT surprise, it turned out it could have been averted if the ending php tag '?>' was not added at all per excerpt from https://www.reddit.com/r/PHP/comments/5i0v26/is_using_a_php_closing_tag_considered_bad/

> The closing tag of a PHP block at the end of a file is optional, and in some cases omitting it is helpful 
> when using include or require, so unwanted whitespace will not occur at the end of files, and you will still 
> be able to add headers to the response later.

An excerpt from Drupal Coding Standard https://www.drupal.org/docs/develop/standards/coding-standards

> Note that as of Drupal 4.7, the ?> at the end of code files is purposely omitted. 
> This includes for module and include files. The reasons for this can be summarized as:
> * Removing it eliminates the possibility for unwanted whitespace at the end of files which can cause "header already sent" 
> errors, XHTML/XML validation issues, and other problems.
> * The closing delimiter at the end of a file is optional.
> PHP.net itself removes the closing delimiter from the end of its files (example: prepend.inc), so this can be seen as a "best practice."
