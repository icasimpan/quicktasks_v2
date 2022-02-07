---
title: "Apache Redirect for http to https via .htaccess"
date: 2020-07-10T00:20:25+08:00
tags: [apache, webserver, .htaccess, redirect]
draft: false
---

Generic way to do it but would result into duplicate URLs, e.g. https://example.com & https://www.example.com
```
RewriteCond %{HTTPS} off
RewriteCond %{HTTP:X-Forwarded-Proto} !https
RewriteRule ^(.*)$ https://%{HTTP_HOST}%{REQUEST_URI} [L,R=301]
```

To avoid the duplicate URLs, do the following:
```
## 1. Redirect all non-https except www to https://www
RewriteCond %{HTTP_HOST} !foo\.example\.com [NC]  # exclude foo.example.com domain
RewriteCond %{HTTP_HOST} !bar\.example\.net [NC]  # exclude foo.example.net domain
RewriteCond %{HTTP_HOST} .
RewriteCond %{HTTP_HOST} !^www\. [NC]
RewriteCond %{HTTP:X-Forwarded-Proto} !https
RewriteRule ^ https://www.%{HTTP_HOST}%{REQUEST_URI} [L,R=301]

## 2. Redirect for http://www to https://www
## NOTE: HTTP_HOST already starts with "www" (e.g. www.example.com) so it's no longer
## hardcoded in the RewriteRule. Otherwise, it would become www.www.example.com which 
## is clearly wrong.
RewriteCond %{HTTP_HOST} !foo\.example\.com [NC]  # exclude foo.example.com domain
RewriteCond %{HTTP_HOST} !bar\.example\.net [NC]  # exclude foo.example.net domain
RewriteCond %{HTTP_HOST} .
RewriteCond %{HTTP_HOST} ^www\. [NC]
RewriteCond %{HTTP:X-Forwarded-Proto} !https
RewriteRule ^ https://%{HTTP_HOST}%{REQUEST_URI} [L,R=301]

## 3. Redirect all https to https://www except those https://www
RewriteCond %{HTTP_HOST} !foo\.example\.com [NC]  # exclude foo.example.com domain
RewriteCond %{HTTP_HOST} !bar\.example\.net [NC]  # exclude foo.example.net domain
RewriteCond %{HTTP_HOST} .
RewriteCond %{HTTP_HOST} !^www\. [NC]
RewriteCond %{HTTP:X-Forwarded-Proto} https
RewriteRule ^ https://www.%{HTTP_HOST}%{REQUEST_URI} [L,R=301]
```

See https://www.drupal.org/docs/7/modules/domain-access/htaccess-changes-optional for some other examples.
