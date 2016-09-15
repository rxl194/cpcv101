# -*- coding: utf-8 -*-
from django.conf.urls import url
from imgnailapp.views import list

urlpatterns = [
    url(r'^list/$', list, name='list')
]
