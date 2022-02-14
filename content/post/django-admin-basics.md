---
title: "Django Admin Basics"
date: 2022-02-13T23:17:11+08:00
tags: [django, web-dev]
draft: false
---

# Do the Migration
```
python3 manage.py makemigrations
python3 manage.py migrate
```

# Create the Admin Account
```
python3 manage.py createsuperuser
```

# Run server
```
python3 manage.py runserver
```

Visit http://127.0.0.1:8000/admin and use the account created earlier.
