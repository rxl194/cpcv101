
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



// Use Anaconda
// $ conda install django

// django included in requirements.txt
$ pip install -r requirements.txt
$ django-admin --version 
  1.9.2

$ anaconda search -t conda sqlite3
$ conda install -c blaze sqlite3

$ python manage.py dbshell
sqlite> .databases
sqlite> .quit

// startproject <proj> [dir]
$ django-admin.py startproject c_django_tweets django_tweets

$ python manage.py makemigrations
$ python manage.py migrate
$ python manage.py sqlmigrate user_profile 0001
$ python manage.py migrate user_profile 
$ python manage.py showmigrations tweet
$ python manage.py sqlmigrate tweet 0002
$ python manage.py createsuperuser --username=rxl194 --email=rxl194@example.com <rxl168bc>

http://127.0.0.1:8000/admin

Add user: ratancs, ratancs@live.com, ab1234cd

