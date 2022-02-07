---
title: "Force http to https"
date: 2018-04-09T00:20:25+08:00
tags: [drupal, htaccess, https, secure, forced]
draft: false
---

```
root@example.com:/var/www/sites/yoursite.example.com/www# git diff .htaccess
diff --git a/www/.htaccess b/www/.htaccess
index 440cabc..968f601 100644
--- a/www/.htaccess
+++ b/www/.htaccess
@@ -93,6 +93,12 @@ DirectoryIndex index.php index.html index.htm
   # RewriteCond %{HTTP_HOST} !^www\. [NC]
   # RewriteRule ^ http%{ENV:protossl}://www.%{HTTP_HOST}%{REQUEST_URI} [L,R=301]
   #
+
+  # Redirect HTTP to HTTPS
+  RewriteCond %{HTTPS} off
+  RewriteCond %{HTTP:X-Forwarded-Proto} !https
+  RewriteRule ^(.*)$ https://%{HTTP_HOST}%{REQUEST_URI} [L,R=301]
+
   # To redirect all users to access the site WITHOUT the 'www.' prefix,
   # (http://www.example.com/... will be redirected to http://example.com/...)
   # uncomment the following:
```
References:

* https://stackoverflow.com/questions/9632852/how-to-debug-apache-mod-rewrite
* https://stackoverflow.com/questions/16200501/http-to-https-apache-redirection
* https://www.digitalocean.com/community/questions/redirect-from-http-to-https
