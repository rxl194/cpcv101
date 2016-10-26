from django.conf.urls import url, include
from rest_framework import routers
from . import views

urlpatterns = [
    # REST-API
    url(r'^api/list/$', views.ImageList.as_view()),

    url(r'^create/$', views.image_create, name='create'),
    url(r'^upload/$', views.image_upload, name='upload'),
    url(r'^detail/(?P<id>\d+)/(?P<slug>[-\w]+)/$', views.image_detail, name='detail'),
    url(r'^like/$', views.image_like, name='like'),
    url(r'^$', views.image_list, name='list'),
]
