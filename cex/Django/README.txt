
From BOOK:

// django_bookmarks
// django_tweets
## Learning Django Web Development
## By: Sanjeev Jaiswal; Ratan Kumar
## Publisher: Packt Publishing
## Pub. Date: June 22, 2015
## Web ISBN-13: 978-1-78398-441-1
## Print ISBN-13: 978-1-78398-440-4
## Pages in Print Edition: 336


## Django By Example
## By: Antonio Melé
## Publisher: Packt Publishing
## Pub. Date: November 30, 2015
## Print ISBN-13: 978-1-78439-191-1
## Web ISBN-13: 978-1-78439-841-5
## Pages in Print Edition: 474

// Use Anaconda
// $ conda install django

// django included in requirements.txt
$ pip install -r requirements.txt
$ django-admin --version 
  1.9.2
  
##trouble shooting: python3.5
## pkg_config not found:
#$ conda install psycopg2
  

$ anaconda search -t conda sqlite3
$ conda install -c blaze sqlite3

$ python manage.py dbshell
sqlite> .databases
sqlite> .quit

/**************************
** For Project: django_tweets
***************************/

// startproject <proj> [dir]
$ django-admin.py startproject c_django_tweets django_tweets

$ python manage.py makemigrations
$ python manage.py migrate
$ python manage.py sqlmigrate user_profile 0001
$ python manage.py migrate user_profile 
$ python manage.py showmigrations tweet
$ python manage.py sqlmigrate tweet 0002

// How to build and run the django_tweets proj:
$ python manage.py migrate
$ python manage.py createsuperuser --username=rxl194 --email=rxl194@example.com <rxl168bc>
$ python manage.py runserver

http://127.0.0.1:8000/admin

// Can add user when adding new tweet 
// ( make sure users added in USER_PROFILE models )
1. Add user: ratancs, ratancs@live.com, ab1234cd
2. compose new tweet by the new user:
  one with hashtag, and one without hashtag

http://localhost:8000/user/ratancs/

  How are Djano, Rantacs is in!
  Hello, #Django! you are has awesome!
  First post from my Tweet
  First Post from my #django_learning acc!!
  First Post from my #django_learning acc!!
  
http://localhost:8000/hashTag/django_learning/  

MyTweets

  First Post from my #django_learning acc!!
  First Post from my #django_learning acc!!
  
  
/**************************
** For Project: django_examples
***************************/
$ django-admin startproject c_django_examples django_examples
$ cd django_examples

$ python manage.py migrate
$ python manage.py runserver

#$ python manage.py runserver 127.0.0.1:8001 \
   --settings=mysite.settings

// Creating an application
$ python manage.py startapp blog
$ python manage.py makemigrations blog
$ python manage.py sqlmigrate blog 0001
$ python manage.py migrate

// Creating a superuser
$ python manage.py createsuperuser --username=rxl194 --email=rxl194@example.com <rxl168bc>
$ python manage.py runserver

// Heroku CLI
$ heroku apps
$ export HEROKU_APP='proj-id'
$ heroku apps:info

$ heroku run python manage.py shell
>>>
$ heroku run python manage.py migrate
...
$  heroku run python manage.py createsuperuser --username=rxl194 --email=rxl194@example.com




  


