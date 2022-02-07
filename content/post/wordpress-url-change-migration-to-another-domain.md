---
title: "Wordpress URL change upon migration to another domain"
date: 2019-09-28T23:17:11+08:00
tags: [wordpress, migration, url-change, domain, change, wp-cli]
draft: false
---

The easiest is to add it to "wp-config.php". Something like:

```
define('WP_HOME','http://NEW_DOMAIN.com/');
define('WP_SITEURL','http://NEW_DOMAIN.com/');
```

You can test it in `curl` and see if it works:
```
curl -IL http://NEW_DOMAIN.com
```

URL change can be done via `wp-cli`. Do the following:
```
wp search-replace 'OLD_DOMAIN.com' 'NEW_DOMAIN.com' --dry-run
```

Note that the above is a `dry-run` or practice only. If x in not zero in the bottom statement of 'x replacements':
```
~$ wp search-replace 'http://OLD_DOMAIN.com' 'http://NEW_DOMAIN.com' --dry-run
+------------------+-----------------------+--------------+------+
| Table            | Column                | Replacements | Type |
+------------------+-----------------------+--------------+------+
| wp_commentmeta   | meta_key              | 0            | SQL  |
| wp_commentmeta   | meta_value            | 0            | SQL  |
| wp_comments      | comment_author        | 0            | SQL  |
| wp_comments      | comment_author_email  | 0            | SQL  |
| wp_comments      | comment_author_url    | 0            | SQL  |
| wp_comments      | comment_author_IP     | 0            | SQL  |
| wp_comments      | comment_content       | 0            | SQL  |
| wp_comments      | comment_approved      | 0            | SQL  |
| wp_comments      | comment_agent         | 0            | SQL  |
| wp_comments      | comment_type          | 0            | SQL  |
| wp_links         | link_url              | 0            | SQL  |
| wp_links         | link_name             | 0            | SQL  |
| wp_links         | link_image            | 0            | SQL  |
| wp_links         | link_target           | 0            | SQL  |
| wp_links         | link_description      | 0            | SQL  |
| wp_links         | link_visible          | 0            | SQL  |
| wp_links         | link_rel              | 0            | SQL  |
| wp_links         | link_notes            | 0            | SQL  |
| wp_links         | link_rss              | 0            | SQL  |
| wp_options       | option_name           | 0            | SQL  |
| wp_options       | option_value          | 2            | PHP  |
| wp_options       | autoload              | 0            | SQL  |
| wp_postmeta      | meta_key              | 0            | SQL  |
| wp_postmeta      | meta_value            | 0            | SQL  |
| wp_posts         | post_content          | 2            | SQL  |
| wp_posts         | post_title            | 0            | SQL  |
| wp_posts         | post_excerpt          | 0            | SQL  |
| wp_posts         | post_status           | 0            | SQL  |
| wp_posts         | comment_status        | 0            | SQL  |
| wp_posts         | ping_status           | 0            | SQL  |
| wp_posts         | post_password         | 0            | SQL  |
| wp_posts         | post_name             | 0            | SQL  |
| wp_posts         | to_ping               | 0            | SQL  |
| wp_posts         | pinged                | 0            | SQL  |
| wp_posts         | post_content_filtered | 0            | SQL  |
| wp_posts         | guid                  | 3            | SQL  |
| wp_posts         | post_type             | 0            | SQL  |
| wp_posts         | post_mime_type        | 0            | SQL  |
| wp_term_taxonomy | taxonomy              | 0            | SQL  |
| wp_term_taxonomy | description           | 0            | SQL  |
| wp_termmeta      | meta_key              | 0            | SQL  |
| wp_termmeta      | meta_value            | 0            | SQL  |
| wp_terms         | name                  | 0            | SQL  |
| wp_terms         | slug                  | 0            | SQL  |
| wp_usermeta      | meta_key              | 0            | SQL  |
| wp_usermeta      | meta_value            | 0            | PHP  |
| wp_users         | user_login            | 0            | SQL  |
| wp_users         | user_nicename         | 0            | SQL  |
| wp_users         | user_email            | 0            | SQL  |
| wp_users         | user_url              | 1            | SQL  |
| wp_users         | user_activation_key   | 0            | SQL  |
| wp_users         | display_name          | 0            | SQL  |
+------------------+-----------------------+--------------+------+
Success: 8 replacements to be made.
```

Proceeed and remove the '--dry-run' as follows:
```
~$ wp search-replace 'http://OLD_DOMAIN.com' 'http://NEW_DOMAIN.com'
```

Sometimes, this won't work and you'll notice an infinite redirect.

Just use the following:
```
wp option update home 'https://NEW_DOMAIN.com'
wp option update siteurl 'https://NEW_DOMAIN.com'
```

Things will go back to normal.

NOTE: Going from `http` to `https` and vice versa is a URL change.
