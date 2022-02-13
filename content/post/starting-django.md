---
title: "Starting Django"
date: 2022-02-11T23:17:11+08:00
tags: [django, web-dev]
draft: false
---

# Setup venv
```
~$ python3 -m venv venv
~$ source venv/bin/activate
```

# Install Django (If not yet installed, otherwise skip)
```
~$ pip install django
```

# Create the skeleton of the site
```
~$ django-admin startproject mysite .
```

Server file structure of current directory would be as follows:
```
manage.py
mysite
mysite/__init__.py
mysite/asgi.py
mysite/settings.py
mysite/urls.py
mysite/wsgi.py
```

# Run server
```
python3 manage.py runserver
```

Visit http://127.0.0.1:8000 or whatever is shown after running the server.

At this point, "db.sqlite3" would be added (sqlite is the default DB).
