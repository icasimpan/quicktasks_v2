---
title: "Django Site Structure"
date: 2022-02-12T23:17:11+08:00
tags: [python, django, web-dev]
draft: false
---

It is typyically as follows:

```
+- Hello-World        <-- Project Root
|   |
|   +-- db.sqlite3    <-- Database
|   +-- manage.py     <-- Management Tool
|   +-- myapp/        <-- Custom App
|   +-- forum/        <-- Custom App
|   +-- myadmin/      <-- Custom App
|   +-- mysite/       <-- Project Package
|
+- venv <-- virtual environment (Django + Python)
```

Each custom app is a project feature.

Default content for new "app"
```
myapp
  |
  +-- __init__.py
  +-- __pycache__
  +-- admin.py
  +-- apps.py
  +-- migrations/
  +-- models.py
  +-- templates/
  +-- tests.py
  +-- views.py
```

* __init__.py - usually an empty file that marks this directory as a Python package.

* __pycache__ - contains bytecode that makes the program start faster

* admin.py - admin interface you can use to manage content. Register models in this file so they are available like below:
```
from django.contrib import admin
from myapp.models import Post
admin.site.register(Post)
```

* apps.py - used to configure the app. Example, you can change the readable name for the app like this:
```
from django.apps import AppConfig
class MyConfig(AppConfig):
    verbose_name = "Excellent App"
```
* migrations - migration files for the app, used to apply changes to the database. Think of it as version control for the DB.

* models.py - store information about the data you want ot work with. Typically, each model maps to a database table.
Example of a "Flower" model (e.g. myapp/models.py:
```
from django.db import models

class Flower(models.Model):
    title = models.CharField(max_length=255, default='')
```
Model is mapped to a db table called "Flower" and each attribute like "title" to a db field.

* myapp/templates/myapp - for templates or views. Django has it's own template language where you mix static HTML, variables, tags and filters to generate final HTML. Always create each app subfolder inside templates folder.

* tests.py - typical place for app testing code

* views.py - views functions are here. View function takes a web request and returns a web response.
Example, in `myapp/views.py`, we used "myapp/index.html" as argument to the "render" function:
```
from django.shortcuts import render

def index(request):
    return render(request, 'myapp/index.html') ## << here
```

## Exploring the project package

```
+- Hello-World        
|   |
|   +-- db.sqlite3    
|   +-- manage.py     
|   +-- myapp/        
|   +-- mysite/       
|         |
|         +-- __init__.py
|         +-- __pycache__
|         +-- settings.py ## < here
|         +-- urls.py     ## < here
|         +-- wsgi.py     ## < here
```

Most of the project configuration happens in the `settings.py` file

Example, the default database configuration looks like this (in mysite/settings.py):
```
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
    }
}
```

In a PostgreSQL database, we would do something as this:
```
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'mysitedb',
        'USER': 'username',
        'PASSWORD': 'password',
        'HOST': 'localhost',
        'PORT': '',
    }
}
```

For "Heroku" platform, this is taken cared of by "django-heroku" package.

* urls.py - contains url patterns. When a user requests for specific page, it is here where Django checks for patterns 
and stops when a match is seen. 

In our "Hello World" example, the index view will be called when user visits the homepage:
```
from django.contrib import admin
from django.urls import path

from myapp import views as myapp_views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', myapp_views.index, name='index'), ## < here
]
```

* wsgi.py - default configuration for WSGI, a specification that deals with interaction between web servers and Python web application.
