from django.conf.urls import include, url
from django.conf import settings
from django.conf.urls.static import static
from django.views.generic import RedirectView

from django.contrib import admin

import imgnailapp.views

urlpatterns = [
    url(r'^admin/', include(admin.site.urls)),
    url(r'^imgnail/', include('imgnailapp.urls')),
    url(r'^list$', RedirectView.as_view(url='/imgnail/list/', permanent=True)),
    url(r'^$', imgnailapp.views.index),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
