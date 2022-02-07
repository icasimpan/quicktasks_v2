---
title: "Check for Active Drupal Contrib Modules"
date: 2020-10-08T00:20:25+08:00
tags: [drupal, modules, contrib]
draft: false
---

Use the command:
```
~$ drush pml --no-core --status=Enabled
```

See sample below:
```
~$ drush pml --no-core --status=Enabled
 ----------------------------- ----------------------------------------------------------- --------- ----------------- 
  Package                       Name                                                        Status    Version          
 ----------------------------- ----------------------------------------------------------- --------- ----------------- 
  Field types                   Address (address)                                           Enabled   8.x-1.8          
  Administration                Admin Toolbar (admin_toolbar)                               Enabled   8.x-2.3          
  Administration                Admin Toolbar Extra Tools (admin_toolbar_tools)             Enabled   8.x-2.3          
  Spam control                  Antibot (antibot)                                           Enabled   8.x-1.4          
  Entity                        Automatic Entity Labels (auto_entitylabel)                  Enabled   8.x-3.0-beta3    
  Content Display               Calendar Link (calendar_link)                               Enabled   8.x-1.1          
  Other                         Component Libraries (components)                            Enabled   8.x-1.1          
  Config                        Config Filter (config_filter)                               Enabled   8.x-1.6          
  Media                         Crop API (crop)                                             Enabled   8.x-2.1          
  Chaos tool suite              Chaos Tools (ctools)                                        Enabled   8.x-3.4          
  Development                   Devel (devel)                                               Enabled   8.x-2.1          
  Development                   Devel Kint (kint)                                           Enabled   8.x-2.1          
  Media                         dropzonejs (dropzonejs)                                     Enabled   8.x-2.3          
  Emulsify                      Emulsify Twig Extensions Module (emulsify_twig)             Enabled   8.x-1.0          
  Other                         Entity staging (entity_staging)                             Enabled   8.x-1.0-alpha1   
  Development                   Environment indicator (environment_indicator)               Enabled   8.x-3.7          
  User interface                External Links (extlink)                                    Enabled   8.x-1.3          
  Search                        Facets (facets)                                             Enabled   8.x-1.5          
 ----------------------------- ----------------------------------------------------------- --------- ----------------- 
```
