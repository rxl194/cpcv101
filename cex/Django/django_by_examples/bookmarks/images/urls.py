from django.conf.urls import url, include
from rest_framework import routers
from . import views

urlpatterns = [
    # REST-API
    url(r'^api/url/$', views.ImageUrlList.as_view()),
    url(r'^api/$', views.ImageList.as_view()),

    url(r'^create/$', views.image_create, name='create'),
    url(r'^upload/$', views.image_upload, name='upload'),
    url(r'^detail/(?P<id>\d+)/(?P<slug>[-\w]+)/$', views.image_detail, name='detail'),
    url(r'^like/$', views.image_like, name='like'),
    url(r'^ranking/$', views.image_ranking, name='create'),
    url(r'^$', views.image_list, name='list'),
]
