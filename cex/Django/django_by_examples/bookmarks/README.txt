
/*****************
** ~/.bashrc
*****************/
alias act_django="source activate django_env"
alias deact="source deactivate"
alias cpvs="python manage.py runserver"

# added by Anaconda3 4.2.0 installer
export PATH="~/anaconda3/bin:$PATH"

/******************
** ENV SETUP
******************/
$ conda env create -f django_env_20161110.yml 

/******************
** ENV ADMIN
******************/
$ conda create --name <env_name> <pkg_name_1> [pkg2]...
$ conda info --envs
$ conda env list
$ conda remove --name flowers --all
$ conda create --name <new_env> --clone <existing_env>
$ conda env export > environment.yml
$ conda env create -f environment.yml

/******************
** DEVELOPE:
******************/
$ python manage.py startapp <app_name>


/******************
** RUN
******************/
$ python manage.py makemigrations
$ python manage.py migrate
$ cpvs 

/********************
** TEST
********************/
http://127.0.0.1:8000/images/create/?title=%20Django%20and%20Duke&url=http://upload.wikimedia.org/wikipedia/commons/8/85/Django_Reinhardt_and_Duke_Ellington_%28Gottlieb%29.jpg

