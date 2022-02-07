---
title: "error: 'drush -fra -y' Failed to Create Directory"
date: 2018-04-09T00:20:23+08:00
tags: [drupal, feature, permission, error, failure]
draft: false
---

```
bash-4.1$ /usr/local/bin/drush cc all
‘all’ cache was cleared.                                                                                                                                                          [success]
bash-4.1$ /usr/local/bin/drush fra -y
WD print_pdf: Failed to create directory “public://print_pdf/print_pdf_mpdf/ttfontdata” for print_pdf_mpdf.                                                                       [error]
WD print_pdf: Failed to create directory “public://print_pdf/print_pdf_mpdf/tmp” for print_pdf_mpdf.                                                                              [error]
The following modules will be reverted: content_set_4
Do you really want to continue? (y/n): y
Reverted content_set_4.field_group.                                                                                                                                               [ok]
bash-4.1$ /usr/local/bin/drush fra -y
The following modules will be reverted: content_set_4
Do you really want to continue? (y/n): y
Reverted content_set_4.field_group.       
```

HINT: "public://" is always in sites/default/files, check from there.
