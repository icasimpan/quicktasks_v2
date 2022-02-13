---
title: "Basic Django Hello World"
date: 2022-02-12T23:17:11+08:00
tags: [python, django, web-dev]
draft: false
---

By now, you should now have a basic django skeleton site as shown in [Starting Django](https://ismael.casimpan.com/quicktasks/starting-django/).

Here's how you create a basic site that now says "Hello World"

# Create the App
Inside your basic skeleton site, run the command:
```
~$ python3 manage.py startapp myapp
```

Server file structure of current directory would now be as follows:
```
db.sqlite3
manage.py
myapp/     ## << new app
mysite/
mysite/__init__.py
mysite/asgi.py
mysite/settings.py
mysite/urls.py
mysite/wsgi.py
```

# Add App to Installed Apps
Edit the file `mysite/settings.py` like below:
```
INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.session',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'myapp', ## << add it here
]
```

# Create template files

```
db.sqlite3
manage.py
myapp/
myapp/templates/                    ## << here (create)
myapp/templates/myapp/              ## << here (create)
myapp/templates/myapp/index.html    ## << here (create)
```

With content of `index.html` as follows:
```
<b>Hello World!</b>
```

# Create Views
In `myapp/views.py`, add an "index" function:
```
db.sqlite3
manage.py
myapp/
myapp/views.py ## << here
```

as follows:
```
from django.shortcuts import render

def index(request): ## << here
    return render(request, 'myapp/index.html')
```

# Add homepage path
In `mysite/urls.py`, add the "index" path to urlpatterns list:
```
db.sqlite3
manage.py
mysite/ 
mysite/urls.py ## << here
```
as follows:

```
from django.contrib import admin
from django.urls import path

from myapp import views as myapp_views ## << here

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', myapp_views.index, name='index'), ## << here
]
```

# Run server
```
python3 manage.py runserver
```

Visit http://127.0.0.1:8000 or whatever is shown after running the server.
Expect to see the "Hello World".
