---
title: "Drush Features Diff (drupal7)"
date: 2018-04-09T00:20:25+08:00
tags: [drupal, drush, diff, d7, features]
draft: false
---

1. Enable diff module
```
drush en diff -y
```

2. Show all features
```
[root@yoursite.example.com docroot]# drush fd
 BEF Test Content          bef_test_content          Disabled  7.x-3.5                     
 Keystone Media News       content_keystone_media    Enabled   7.x-1.0-alpha10             
 Content Set #1            content_set_1             Enabled   7.x-1.0-alpha9m             
 Content Set #2            content_set_2             Enabled   7.x-1.0-alpha16m            
 Content Set #3            content_set_3             Enabled   7.x-1.0-alpha80   Overridden
 Content Set #4            content_set_4             Enabled   7.x-1.0-alpha26             
 Date Migration Example    date_migrate_example      Disabled  7.x-2.10                    
 Features Tests            features_test             Disabled  7.x-2.10                    
 Feeds Import              feeds_import              Enabled   7.x-2.0-beta4               
 Feeds News                feeds_news                Disabled  7.x-2.0-beta4               
 Free Tags                 free_tags                 Enabled   7.x-1.0-alpha2              
 migrate_example_baseball  migrate_example_baseball  Disabled  7.x-2.7                     
 Migrate example - Oracle  migrate_example_oracle    Disabled  7.x-2.7                     
 Radioactivity defaults    radioactivitydefaults     Disabled  7.x-2.10                    
 Site Config               site_config               Enabled   7.x-1.0-alpha23m            
 Site Config: Events       site_config_events        Enabled   7.x-1.0-alpha5              
 Site Contexts             site_contexts             Enabled   7.x-1.0-alpha14             
 TBF Trump Tracker         tbf_trump_tracker         Enabled                               
 UUID Services Example     uuid_services_example     Disabled  7.x-1.0
```

3. Get the diff

```
[root@yoursite.example.com docroot]# drush fd content_set_3
Legend:
Code:       drush features-revert will remove the overrides.
Overrides:  drush features-update will update the exported feature with the displayed overrides
 
 
Component type: field_instance
          'allowed_schemes' => array(
            'public' => 'public',
>           'vimeo' => 'vimeo',
            'youtube' => 'youtube',
          ),
            'video' => 'video',
          ),
<         'progress_indicator' => 'throbber',
---
>         'browser_plugins' => array(
>           'media_default--media_browser_1' => 'media_default--media_browser_1',
>           'media_internet' => 'media_internet',
>           'upload' => 'upload',
>         ),
        ),
        'type' => 'media_generic',
```
