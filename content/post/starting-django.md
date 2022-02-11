---
title: "Starting Django"
date: 2022-02-11T23:17:11+08:00
tags: [python, django, web-dev]
draft: false
---

# Setup venv
```
~$ python3 -m venv venv
~$ source venv/bin/activate
```

# Install Django
```
~$ pip install django
~$ django-admin startproject mysite .
```

# Run server
```
python3 manage.py runserver
```

Visit http://127.0.0.1:8000 or whatever is shown after running the server.
