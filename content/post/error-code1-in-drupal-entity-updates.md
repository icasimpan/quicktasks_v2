---
title: "Drupal 8 Error Code 1 in Drupal Entity Updates"
date: 2020-01-18T00:20:25+08:00
tags: [drupal, d8, composer, entity]
draft: false
---

At the end of composer install, the following was shown:

```
In UpdateDBCommands.php line 109:
                                                                               
  Drupal removed its automatic entity-updates API in 8.7. See https://www.dru  
  pal.org/node/3034742.                                                        
                                                                               

entity:updates [--cache-clear [CACHE-CLEAR]] [--no-cache-clear] [-h|--help] [-q|--quiet] [-v|vv|vvv|--verbose] [-V|--version] [--ansi] [--no-ansi] [-n|--no-interaction] [-d|--debug] [-y|--yes] [--no] [--remote-host REMOTE-HOST] [--remote-user REMOTE-USER] [-r|--root ROOT] [-l|--uri URI] [--simulate] [--pipe] [-D|--define DEFINE] [--notify [NOTIFY]] [--druplicon] [--xh-link XH-LINK] [--] <command>

Script sh scripts/composer/updates.sh handling the drupal-updates event returned with error code 1
Script @drupal-updates was called via post-install-cmd

```


This is just a info message and not an error. Excerpt from https://www.drupal.org/node/3034742 

> In practice this should have no impact over regular deployment workflows, the only actual change is that drush entup will not work anymore until it is reimplemented in contrib. The command will be removed from drush core and added back to a module depending on devel to make it clear that drush entup is a developer tool and should never be part of a production workflow.
