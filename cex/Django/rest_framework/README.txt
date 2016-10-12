
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
]

/************************
** 01- Serialization
************************/
$ http://www.django-rest-framework.org/tutorial/1-serialization/

//$ pip install django
//$ pip install djangorestframework
$ pip install pygments  # We'll be using this for the code highlighting

// Getting started
$ django-admin.py startproject tutorial
$ cd tutorial
$ python manage.py startapp snippets

$ python manage.py makemigrations snippets
$ python manage.py migrate

// Creating data instances 
// from Serializers
$ python manage.py shell
>>>
from snippets.models import Snippet
from snippets.serializers import SnippetSerializer
from rest_framework.renderers import JSONRenderer
from rest_framework.parsers import JSONParser

snippet = Snippet(code='foo = "bar"\n')
snippet.save()

snippet = Snippet(code='print "hello, world"\n')
snippet.save()

serializer = SnippetSerializer(snippet)
serializer.data

content = JSONRenderer().render(serializer.data)
content

// Deserialization
from django.utils.six import BytesIO

stream = BytesIO(content)
data = JSONParser().parse(stream)

serializer = SnippetSerializer(data=data)
serializer.is_valid()

serializer.validated_data
serializer.save()

serializer = SnippetSerializer(Snippet.objects.all(), many=True)
serializer.data

>>>

// Using ModelSerializers
$ python manage.py shell
>>>
from snippets.serializers import SnippetSerializer
serializer = SnippetSerializer()
print(repr(serializer))
>>>




