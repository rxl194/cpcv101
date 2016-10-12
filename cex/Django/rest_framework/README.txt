
$ http://www.django-rest-framework.org/tutorial

/************************
** Quickstart
************************/


// Create the project directory
$ mkdir tutorial
$ cd tutorial

// Install Django and Django REST framework into the virtualenv
//$ pip install django
//$ pip install djangorestframework
$ django-admin.py --version

//# Set up a new project with a single application
$ django-admin.py startproject tutorial .  # Note the trailing '.' character
$ cd tutorial
$ django-admin.py startapp quickstart
$ cd ..

$ python manage.py migrate
$ python manage.py createsuperuser ( admin:password123 )

// Testing our API
$ python manage.py runserver
$ curl -H 'Accept: application/json; indent=4' -u admin:password123 http://127.0.0.1:8000/users/
